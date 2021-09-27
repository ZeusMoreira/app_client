// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());

}

class HomePage extends StatefulWidget{

  @override
  HomePageState createState() => HomePageState();
  }
  

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFF9B0D),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)
            )
          ),
          height: 572.0,
          width: 360.0,
        ),
            
        )
      );
  }
}
  