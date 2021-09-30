// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_client/TelaPatoFrango/detalhes2.dart';
import 'package:app_client/TelaPatoFrango/imagem2.dart';
import 'package:app_client/TelaPatoFrango/ingredientes2.dart';
import 'package:app_client/TelaPatoFrango/nomelanche2.dart';
import 'package:app_client/TelaPatoFrango/preco2.dart';
import 'package:app_client/TelaPatoFrango/titulodetalhes2.dart';
import 'package:app_client/TelaPatoFrango/tituloingredientes2.dart';
import 'package:flutter/cupertino.dart';
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
          Positioned(
            bottom: 0.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    NomeLanche(),
                    TituloDetalhes(),
                    Detalhes(),
                    TituloIngredientes(),
                    Ingredientes(),
                    Preco(),
                  ],
                )
            ),
          ),
          Imagem()
      ]
    );
  }
}
      