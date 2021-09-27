// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)
            )
          ),
          height: 572.0,
          width: 360.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.only(
                  top: 29.0,
                  bottom: 513.0,  //Original é 516, porém estava erro de Render
                  left: 118.0,
                  right: 90.0
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Pato",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF333333),
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900
                  ),
                  children: [
                    TextSpan(
                      text: " Burguer",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFFFF9B0D),
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900
                      )
                    )
                  ]
                  )
                )
                )
              ],),
            ],),
        ),
            
        )
      );
  }
}
  
