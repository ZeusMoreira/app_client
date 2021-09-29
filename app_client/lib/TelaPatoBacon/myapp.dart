// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:app_client/TelaHome/myapp.dart';
import 'package:app_client/TelaPatoBacon/design.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
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
      body: Design(),
    );
  }
}