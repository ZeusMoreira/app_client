
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/assets/pb_icons.dart';
import 'package:app_client/cardapio.dart';
import 'package:app_client/contato.dart';
import 'package:app_client/logo.dart';
import 'package:app_client/promo1.dart';
import 'package:app_client/promo2.dart';
import 'package:app_client/promotext.dart';
import 'package:flutter/material.dart';

class Design extends StatefulWidget {

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          height: 572.0,
          width: 360.0,
          
          child: SingleChildScrollView(
            child: Column(
              children: [
                Logo(),
              PromoText(),
              PromoUm(),
              PromoDois(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 34.0,
                  bottom: 39.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Cardapio(),
                    Contato(),
                  ],
                ),
              )
              ],),
          ),
            
        );
        
  }
}