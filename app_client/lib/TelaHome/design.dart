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
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        PromoUm(widget.el1),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                        PromoDois(widget.el2),
                        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Cardapio(),
                            Contato(),
                          ],
                        ),
                      ],),
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
