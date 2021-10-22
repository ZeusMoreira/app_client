import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'descricao_item.dart';

class ItensCardapio extends StatefulWidget {
  @override
  _ItensCardapioState createState() => _ItensCardapioState();
}

class _ItensCardapioState extends State<ItensCardapio> {
  late Future userFuture;

  @override
  void initState(){
    super.initState();
    userFuture = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFF9B0D),
        body: FutureBuilder(
            future: userFuture,
            builder: (context,AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('none');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Center(child: CircularProgressIndicator());
                  }
                  var arr = [];
                  var arr2 = [];
                  for(int i=0; i < snapshot.data.length-1; i++){
                    String id = snapshot.data['lunch'][i];
                    if(snapshot.data[id]['promo'] == true){
                      arr.add(snapshot.data['lunch'][i]);
                      arr2.add(i);
                    }
                  }

                  return Container(
                    padding: EdgeInsets.only(top: 20),
                      child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15.0),
                                            topLeft: Radius.circular(15.0))),
                                    height: (MediaQuery
                                        .of(context)
                                        .size
                                        .height)*0.78,
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    child: GridView.count(
                                      primary: false,
                                      padding: EdgeInsets.all(30),
                                      crossAxisSpacing: 26,
                                      mainAxisSpacing: 32,
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.8,
                                      children: List.generate(arr.length, (index) {
                                        String id = arr[index];
                                          return InkWell(
                                            onTap: (){Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => DescricaoItem(
                                                    snapshot.data['lunch'][arr2[index]],
                                                    snapshot.data[id]['nome'],
                                                    snapshot.data[id]['detalhes'],
                                                    snapshot.data[id]['ingredientes'],
                                                    snapshot.data[id]['preco'],
                                                    index.toString()
                                                )
                                                ));},
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFFCB82),
                                                  borderRadius: BorderRadius.circular(16),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x3F000000),
                                                      offset: Offset(0, 4),
                                                      spreadRadius: 0,
                                                    )
                                                  ],
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 80),
                                                      child: Container(
                                                          width: double.infinity,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.only(
                                                              bottomLeft: Radius.circular(16),
                                                              bottomRight: Radius.circular(16),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.only(top: 60),
                                                                child: Text(
                                                                  snapshot.data[id]['nome'],
                                                                  style: TextStyle(
                                                                    fontFamily: 'Roboto',
                                                                    color: Color(0xFF434343),
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.bold,
                                                                  ),),
                                                              ),
                                                              Row(
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 0),
                                                                    child: Text('R\$',
                                                                      style: TextStyle(
                                                                        fontFamily: 'Roboto',
                                                                        color: Color(0xFFFF9B0D),
                                                                        fontWeight: FontWeight.bold,
                                                                      ),),),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                    child: Text(snapshot.data[id]['preco'],
                                                                      style: TextStyle(
                                                                        fontFamily: 'Roboto',
                                                                        color: Color(0xFF434343),
                                                                        fontSize: 20,
                                                                        fontWeight: FontWeight.bold,
                                                                      ),),)
                                                                ],)
                                                            ],
                                                          )
                                                      ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                          alignment: Alignment.topCenter,
                                                          child: Container(
                                                              padding: EdgeInsets.only(
                                                                  top: 10.0
                                                              ),
                                                              height: 128,
                                                              child: Image.network(snapshot.data[id]['imagem'],
                                                                fit: BoxFit.fill,
                                                              )
                                                          ),
                                                        )
                                                    )
                                                  ],
                                                )
                                            ),
                                          );
                                      }
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            )
                          ]
                      )
                  );
                default:
                  return Text('default');
              }
            })
    );
  }
}

getData() async{
  var a = await FirebaseFirestore.instance
      .collection('PatoBurguer')
      .doc('lanches')
      .get();
  return a.data();
}
