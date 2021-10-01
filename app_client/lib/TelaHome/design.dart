
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/TelaHome/Promoções/promo1.dart';
import 'package:app_client/TelaHome/Promoções/promo2.dart';
import 'package:app_client/assets/pb_icons.dart';
import 'package:app_client/TelaHome/cardapio.dart';
import 'package:app_client/TelaHome/contato.dart';
import 'package:app_client/TelaHome/logo.dart';
import 'package:app_client/TelaHome/promotext.dart';
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
              height: (MediaQuery.of(context).size.height)/1.10,
              width: double.infinity,
              
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Logo(),
                  PromoText(),
                  PromoUm(),
                  PromoDois(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height)*0.053125,
                      bottom: (MediaQuery.of(context).size.height)*0.069375,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: (MediaQuery.of(context).size.height)*0.004,
                        left: MediaQuery.of(context).size.width*0.07,
                        right: MediaQuery.of(context).size.width*0.07

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
            top: (MediaQuery.of(context).size.height)*0.2346,
            left: (MediaQuery.of(context).size.width)*0.4565,
            child: Image.asset(
              "assets/images/pato-bacon_solo.png",
              height: MediaQuery.of(context).size.height*0.18,
              width: MediaQuery.of(context).size.width*0.39,
            ),
          ),
          Positioned(
            top:  MediaQuery.of(context).size.height*0.4153,
            left: (MediaQuery.of(context).size.width)*0.4365,
            child: Image.asset(
              "assets/images/pato-frango.png",
              height: MediaQuery.of(context).size.height*0.23,
              width: MediaQuery.of(context).size.width*0.55,
            ),
          ),
        
          
      ],
    );

        
  }
}