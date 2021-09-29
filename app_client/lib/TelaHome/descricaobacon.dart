// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_client/TelaHome/bottomnavi.dart';
import 'package:app_client/TelaHome/design.dart';
import 'package:app_client/TelaPatoBacon/myapp.dart';
import 'package:app_client/TelaPatoFrango/descricaofrango.dart';
import 'package:app_client/assets/pb_icons.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();

  }
  

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFF9B0D),
        body: Design(),
        bottomNavigationBar: BottomNavi(),
      ),
      
      );
  }
}