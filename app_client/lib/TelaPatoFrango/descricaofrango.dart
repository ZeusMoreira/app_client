import 'package:app_client/TelaHome/telahome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BackgroundFrango extends StatefulWidget {

  @override
  _BackgroundFrangoState createState() => _BackgroundFrangoState();
}

class _BackgroundFrangoState extends State<BackgroundFrango> {
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
      appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.arrow_back_ios_new_sharp),
              onPressed: () {
                Navigator.of(context)
                    .pop(MaterialPageRoute(builder: (context) => TelaHome()));
              },
            ),
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Cardápio",
          style: new TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.0375,
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w900),
        ),
      ),
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
                return Stack(
                    children: [
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF3F3F3),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0)
                                )
                            ),
                            height: (MediaQuery.of(context).size.height)/1.7,
                            width: (MediaQuery.of(context).size.width),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: (MediaQuery.of(context).size.width)*0.06944,
                                    top: (MediaQuery.of(context).size.height)*0.135,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        snapshot.data['Pato-Frango']['nome'],
                                        style: TextStyle(
                                            color: Color(0xFF434343),
                                            fontSize: (MediaQuery.of(context).size.height)*0.0375,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0125,
                                        left: (MediaQuery.of(context).size.width)*0.0694,
                                      ),
                                      child: Text(
                                          "Detalhes",
                                          style: TextStyle(
                                              color: Color(0xFF434343),
                                              fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                              fontWeight: FontWeight.w900,
                                              fontStyle: FontStyle.normal
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: (MediaQuery.of(context).size.height)*0.0125,
                                          left: (MediaQuery.of(context).size.width)*0.0694,
                                          right: (MediaQuery.of(context).size.width)*0.0694
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: (MediaQuery.of(context).size.height)*0.105,
                                            width: (MediaQuery.of(context).size.width)*0.8555,
                                            child: Text(
                                                snapshot.data['Pato-Frango']['detalhes'],
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(67, 67, 67, 0.6),
                                                    fontSize: (MediaQuery.of(context).size.height)*0.0215,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal
                                                )
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0125,
                                        left: (MediaQuery.of(context).size.width)*0.0694,
                                      ),
                                      child: Text(
                                          "Ingredientes",
                                          style: TextStyle(
                                              color: Color(0xFF434343),
                                              fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                              fontWeight: FontWeight.w900,
                                              fontStyle: FontStyle.normal
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: (MediaQuery.of(context).size.height)*0.0125,
                                          left: (MediaQuery.of(context).size.width)*0.0694,
                                          right: (MediaQuery.of(context).size.width)*0.0694
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: (MediaQuery.of(context).size.height)*0.078125,
                                            width: (MediaQuery.of(context).size.width)*0.8555,
                                            child: Text(
                                                snapshot.data['Pato-Frango']['ingredientes'],
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(67, 67, 67, 0.6),
                                                    fontSize: (MediaQuery.of(context).size.height)*0.021875,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal
                                                )
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0125,
                                        left: (MediaQuery.of(context).size.width)*0.0694,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                            text: "R\$",
                                            style: TextStyle(
                                                color: Color(0xFFFF9B0D),
                                                fontSize: (MediaQuery.of(context).size.height)*0.01875,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "12,75",
                                                  style: TextStyle(
                                                      color: Color(0xFF434343),
                                                      fontSize: (MediaQuery.of(context).size.height)*0.046875,
                                                      fontWeight: FontWeight.w900,
                                                      fontStyle: FontStyle.normal
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ),
                      Positioned(
                        right: (MediaQuery.of(context).size.width)*0.03,
                        left: (MediaQuery.of(context).size.width)*0.03,
                        top: (MediaQuery.of(context).size.height)*0.073125,
                        child: Image.asset(
                            "assets/images/pato-frango.png",
                            fit: BoxFit.fill,
                            height: (MediaQuery.of(context).size.height)*0.374,
                            width: (MediaQuery.of(context).size.width)*0.8388
                        ),
                      ),
                    ]
                );
              default:
                return Text('default');
            }}),
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