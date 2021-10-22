// ignore_for_file: prefer_const_constructors

import 'package:app_client/TelaSobre/imagemPato.dart';
import 'package:app_client/TelaSobre/slogan.dart';
import 'package:app_client/TelaSobre/texto.dart';
import 'package:app_client/TelaSobre/titlehistoria.dart';
import 'package:flutter/material.dart';

class DesignSobre extends StatefulWidget {

  @override
  _DesignSobreState createState() => _DesignSobreState();
}

class _DesignSobreState extends State<DesignSobre> {
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
                    TituloHistoria(),
                      TextoHistoria(),
                      SloganPato()
                  ],
                ),
              )
          ),
          ImagemPato()    
              
      ]
    );
  }
}