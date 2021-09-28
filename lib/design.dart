
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/Promo%C3%A7%C3%B5es/promo1.dart';
import 'package:app_client/Promo%C3%A7%C3%B5es/promo2.dart';
import 'package:app_client/assets/pb_icons.dart';
import 'package:app_client/cardapio.dart';
import 'package:app_client/contato.dart';
import 'package:app_client/logo.dart';
import 'package:app_client/promotext.dart';
import 'package:flutter/material.dart';

class Design extends StatefulWidget {

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
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
            ),
          Positioned(
            top: 131.0,
            right: 0.0,
            left: 100.0,
            bottom: 333.0,
            child: Image.asset(
              "assets/images/pato-bacon_solo.png",
              height: 108.0,
              width: 122.0,
            ),
          ),
          Positioned(
            top: 253.0,
            right: 0.0,
            left: 100.0,
            bottom: 211.0,
            child: Image.asset(
              "assets/images/pato-frango.png",
              height: 98.0,
              width: 112.0,
            ),
          )
            
          
      ],
    );
        
  }
}