// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/TelaHome/Promoções/promo1.dart';
import 'package:app_client/TelaHome/Promoções/promo2.dart';
import 'package:app_client/TelaHome/cardapio.dart';
import 'package:app_client/TelaHome/contato.dart';
import 'package:app_client/TelaHome/logo.dart';
import 'package:app_client/TelaHome/promotext.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Design extends StatefulWidget {

  late final String el1;
  late final String el2;
  Design(this.el1,this.el2);
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {

  late Future userFuture;

  @override
  void initState(){
    super.initState();
    userFuture = getData();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
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
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)
                    )
                ),
                height: (MediaQuery
                    .of(context)
                    .size
                    .height) / 1.10,
                width: double.infinity,

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Logo(),
                      PromoText(),
                      PromoUm(widget.el1),
                      PromoDois(widget.el2),
                      Padding(
                        padding: EdgeInsets.only(
                          top: (MediaQuery
                              .of(context)
                              .size
                              .height) * 0.053125,
                          bottom: (MediaQuery
                              .of(context)
                              .size
                              .height) * 0.069375,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: (MediaQuery
                                  .of(context)
                                  .size
                                  .height) * 0.004,
                              left: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.07,
                              right: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.07

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Cardapio(),
                              Contato(),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
              ),
              Positioned(
                top: (MediaQuery
                    .of(context)
                    .size
                    .height) * 0.2346,
                left: (MediaQuery
                    .of(context)
                    .size
                    .width) * 0.4565,
                child: Image.network(
                  snapshot.data[widget.el1]['imagem'],
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.18,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.39,
                ),
              ),
              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4453,
                left: (MediaQuery
                    .of(context)
                    .size
                    .width) * 0.4565,
                child: Image.network(
                  snapshot.data[widget.el2]['imagem'],
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.18,
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

getData() async{
  var a = await FirebaseFirestore.instance
      .collection('PatoBurguer')
      .doc('lanches')
      .get();
  return a.data();
}
