// ignore_for_file: prefer_const_constructors

import 'package:app_client/TelaHome/contatodesign.dart';
import 'package:app_client/TelaHome/design.dart';
import 'package:app_client/TelaHome/myapp.dart';
import 'package:flutter/material.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContatoPage createState() => _ContatoPage();
}

class _ContatoPage extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFF9B0D),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.arrow_back_ios_new_sharp),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Contato",
            style: new TextStyle(
                fontSize: 24.0,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w900),
          ),
        ),
        body: ContatoDesign(),
      ),
    );
  }
}
