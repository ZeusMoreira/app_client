// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/TelaPatoBacon/descricaobacon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PromoUm extends StatefulWidget {
  late final String el;
  PromoUm(this.el);
  @override
  _PromoUmState createState() => _PromoUmState();
}

class _PromoUmState extends State<PromoUm> {
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

              return Stack(
                children: [
                  Container(
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
                              MaterialPageRoute(builder: (context) => Background(widget.el)),
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
                                snapshot.data[widget.el]['nome'],
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
                                            text: snapshot.data[widget.el]['preco'],
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
                  Container(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.41),
                    child: Image.network(
                    snapshot.data[widget.el]['imagem'],
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.16,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.39,
                    ),
                  ),
                ],
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


