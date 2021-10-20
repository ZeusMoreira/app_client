// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_client/TelaPatoFrango/descricaofrango.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PromoDois extends StatefulWidget {
  late final el2;
  PromoDois(this.el2);
  @override
  _PromoDoisState createState() => _PromoDoisState();
}

class _PromoDoisState extends State<PromoDois> {
  late Future userFuture;

  @override
  void initState(){
    super.initState();
    userFuture = getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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

              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.0529,
                    left: MediaQuery
                        .of(context)
                        .size
                        .width * 0.10,
                    right: MediaQuery
                        .of(context)
                        .size
                        .width * 0.34
                ),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4)
                        )
                        ]
                    ),
                    height: (MediaQuery
                        .of(context)
                        .size
                        .height) * 0.1503,
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width) / 1.5487,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                        primary: Color(0xFFFFFFFF),
                        onPrimary: Color(0xFF434343),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BackgroundFrango(widget.el2)),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  top: (MediaQuery
                                      .of(context)
                                      .size
                                      .height) * 0.029,
                                  right: (MediaQuery
                                      .of(context)
                                      .size
                                      .width) * 0.48,
                                  bottom: (MediaQuery
                                      .of(context)
                                      .size
                                      .height) * 0.01
                              )
                          ),
                          Text(
                            snapshot.data[widget.el2]['nome'],
                            style: TextStyle(
                                color: Color(0xFF434343),
                                fontWeight: FontWeight.bold,
                                fontSize: (MediaQuery
                                    .of(context)
                                    .size
                                    .height) * 0.01875
                            ),
                          ),
                          Text(
                            "Descontassoo do \nPato pra você!!!",
                            style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontWeight: FontWeight.bold,
                                fontSize: (MediaQuery
                                    .of(context)
                                    .size
                                    .height) * 0.01875
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "R\$",
                                  style: TextStyle(
                                    color: Color(0xFF434343),
                                    fontWeight: FontWeight.w700,
                                    fontSize: (MediaQuery
                                        .of(context)
                                        .size
                                        .height) * 0.015625,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: snapshot.data[widget.el2]['preco'],
                                        style: TextStyle(
                                          color: Color(0xFF434343),
                                          fontWeight: FontWeight.w700,
                                          fontSize: (MediaQuery
                                              .of(context)
                                              .size
                                              .height) * 0.03125,
                                        )
                                    ),
                                  ]

                              )
                          ),
                        ],)
                      ,)
                ),
              );
            default:
              return Text('default');
          }});
  }
}

getData() async{
  var a = await FirebaseFirestore.instance
      .collection('PatoBurguer')
      .doc('lanches')
      .get();
  return a.data();
}


