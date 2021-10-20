// ignore_for_file: prefer_const_constructors

import 'package:app_client/TelaHome/telahome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContatoPage createState() => _ContatoPage();
}

class _ContatoPage extends State<ContatoPage> {
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
                    .push(MaterialPageRoute(builder: (context) => TelaHome()));
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Contato",
            style: new TextStyle(
                fontSize: (MediaQuery.of(context).size.height)*0.0375,
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
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0))),
                              height: (MediaQuery.of(context).size.height) / 1.2,
                              width: double.infinity,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.025,
                                        left: (MediaQuery.of(context).size.width)*0.0888

                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          child: Text(
                                            "Endereço:",
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: (MediaQuery.of(context).size.height)*0.015625,
                                            left: (MediaQuery.of(context).size.width)*0.0888
                                        ),
                                        child: Container(
                                          child: Text(
                                            snapshot.data['localizacao']['endereco'],
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0265625
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                          child:  SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.003,
                                              child:
                                              const ColoredBox(color: Color((0xFFC4C4C4)))

                                          ))
                                    ]),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.021875,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Horários de Funcionamento:",
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding:  EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0234375,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Segunda à Sexta",
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),

                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(  //Arrumar depois
                                              left: (MediaQuery.of(context).size.width)*0.3666,
                                            ),
                                            child: Text(
                                              snapshot.data['horario']['segSexta'],
                                              style: new TextStyle(
                                                  fontSize: (MediaQuery.of(context).size.height)*0.015625,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.015625,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Sabádo",
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: (MediaQuery.of(context).size.width)*0.52944
                                          ),  //Arrumar depois
                                          child: Container(
                                            child: Text(
                                              snapshot.data['horario']['sabado'],
                                              style: new TextStyle(
                                                  fontSize: (MediaQuery.of(context).size.height)*0.015625,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0234375,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Domingo e Feriados",
                                            style: new TextStyle(
                                                fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                                                fontFamily: "Roboto",
                                                fontStyle: FontStyle.normal,
                                                color: Color(0xFFFFB54B),
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: (MediaQuery.of(context).size.width)*0.31533
                                          ),
                                          child: Container(
                                            child: Text(
                                              snapshot.data['horario']['domFer'],
                                              style: new TextStyle(
                                                  fontSize: (MediaQuery.of(context).size.height)*0.015625,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0265625
                                    ),
                                    child: Row(children: [
                                      Expanded(
                                          child:  SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.003,
                                              child:
                                              const ColoredBox(color: Color((0xFFC4C4C4)))

                                          ))
                                    ]),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.025,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Faça seu pedido em:",
                                              style: new TextStyle(
                                                  fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          )
                                        ]),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0234375,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            MdiIcons.whatsapp,
                                            color: Color(0xFFFFB54B),
                                            size: (MediaQuery.of(context).size.height)*0.03125,
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: (MediaQuery.of(context).size.width)*0.0083
                                            ),
                                            child: Container(
                                              child: Text(
                                                snapshot.data['whats'],
                                                style: new TextStyle(
                                                    fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                                                    fontFamily: "Roboto",
                                                    fontStyle: FontStyle.normal,
                                                    color: Color(0xFFFFB54B),
                                                    fontWeight: FontWeight.w900),
                                              ),
                                            ),
                                          )
                                        ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0484375,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              "Redes Sociais:",
                                              style: new TextStyle(
                                                  fontSize: (MediaQuery.of(context).size.height)*0.028125,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          )
                                        ]),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0350625,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          Icon(
                                            MdiIcons.facebook,
                                            color: Color(0xFFFFB54B),
                                            size: (MediaQuery.of(context).size.height)*0.03125,
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width)*0.0083,
                                          ),
                                          Container(
                                            child: RichText(
                                              text:TextSpan(
                                                children:[
                                                  TextSpan(
                                                    text: snapshot.data['redeSoc']['face'],
                                                    style:  TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    decorationColor: Color(0xFFFFB54B),
                                                    fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                                                    fontFamily: "Roboto",
                                                    fontStyle: FontStyle.normal,
                                                    color: Color(0xFFFFB54B),
                                                    fontWeight: FontWeight.w900),
                                                  recognizer: TapGestureRecognizer()..onTap = () async {
                                                    var url = "https://www.facebook.com/PatoBurguer1";
                                                    if (await canLaunch (url)){
                                                      await launch(url);
                                                    }else{
                                                      throw "Cannot load Url";
                                                    }}
                                                 ),
                                                ]
                                              )
                                            )
                                          ),
                                        ]),
                                  ),

                                  Padding(
                                    padding:  EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height)*0.0171875,
                                        left: (MediaQuery.of(context).size.width)*0.0888
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            MdiIcons.instagram,
                                            color: Color(0xFFFFB54B),
                                            size: (MediaQuery.of(context).size.height)*0.03125,
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width)*0.0083,
                                          ),
                                          Container(
                                            child: RichText(text: TextSpan(
                                              text: snapshot.data['redeSoc']['insta'],
                                              style: new TextStyle(
                                                  decoration: TextDecoration.underline,
                                                  decorationColor: Color(0xFFFFB54B),
                                                  fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                                                  fontFamily: "Roboto",
                                                  fontStyle: FontStyle.normal,
                                                  color: Color(0xFFFFB54B),
                                                  fontWeight: FontWeight.w900),
                                                recognizer: TapGestureRecognizer()..onTap = () async {
                                                  var url_2 = "https://instagram.com/patoburguer_?utm_medium=copy_link";
                                                  if (await canLaunch(url_2)){
                                                    await launch(url_2);
                                                  }else{
                                                    throw "Cannot load Url";
                                                  }}
                                            ),)
                                          )
                                        ]),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.003,
                          )
                        ],
                      ),

                    ],
                  );
                  default:
                    return Text('default');
              }
            }
        ),
      );
    
  }
}

getData() async{
  var a = await FirebaseFirestore.instance
      .collection('PatoBurguer')
      .doc('config')
      .get();
  return a.data();
}

