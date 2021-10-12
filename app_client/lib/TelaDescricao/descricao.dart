// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:app_client/TelaMenuCardapio/telacardapio.dart';
import 'package:app_client/TelaDescricao/design.dart';
import 'package:flutter/material.dart';

class DescricaoItem extends StatefulWidget {


  @override
  _DescricaoItemState createState() => _DescricaoItemState();
}

class _DescricaoItemState extends State<DescricaoItem> {
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
                    .pop(MaterialPageRoute(builder: (context) => TelaCardapio()));
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Cardápio",
            style: new TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.0375,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w900),
          ),
        ),
      body: Design(),
    );
  }
}