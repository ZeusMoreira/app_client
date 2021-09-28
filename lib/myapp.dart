// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_client/design.dart';
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
        bottomNavigationBar: SizedBox(
          height: 70.0,
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xFFFFFFFF),
            iconSize: 30.0,
            elevation: 0.0,
            backgroundColor: Color(0xFFFF9B0D),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFFFFFFF),
                  ),
                  label: "Home"
                  ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_sharp,
                  color: Color(0xFFFFFFFF),
                  ),
                  label: "Sobre Nós"
                  )
            ],),
        ),
      )
      );
  }
}