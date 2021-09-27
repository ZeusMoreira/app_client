// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/assets/pb_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
      debugShowCheckedModeBanner: false,
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
          
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(
                    top: 29.0, 
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                    top: 22.0, 
                    left: 31.0,
                    right: 185.0
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: "Promoção",
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 22.0,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900
                      ),
                      children: [
                        TextSpan(
                          text: "  Semanal",
                          style: TextStyle(
                            color: Color(0xFFFF9B0D),
                            fontSize: 22.0,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900
                      )
                    )]
                  ),
                  )
                  )],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  right: 125.72,
                  left: 36.0
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0,4)
                    )]
                  ),
                  height: 86.0,
                  width: 197.54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                      ),
                      primary: Color(0xFFFFFFFF),
                      onPrimary: Color(0xFF434343),
                    ),
                    onPressed: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 19.0,
                            left: 55.0,
                            right: 85.28
                          )
                        ),
                      Text(
                        "X-Pato Bacon",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                        text: "20%",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w900,
                          fontSize: 12.0,
                        ),
                        children: [
                          TextSpan(
                            text: " de Desconto",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            )
                          )
                        ]
                      )
                      ),
                      RichText(
                        text: TextSpan(
                        text: "R\$",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                          fontSize: 10.0,
                        ),
                        children: [
                          TextSpan(
                            text: "0,00",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            )
                          ),
                          TextSpan(
                            text: "  \R\$",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 8.0,
                            
                            )
                          ),
                          TextSpan(
                            text: "0,00",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xFFFB1818)
                          ),
                          )
                        ]
          
                      )
                      ),
                      
                    ],)
                    ,)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40.29,
                  right: 125.72,
                  left: 36.0
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0,4)
                    )]
                  ),
                  height: 86.0,
                  width: 197.54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                      ),
                      primary: Color(0xFFFFFFFF),
                      onPrimary: Color(0xFF434343),
                    ),
                    onPressed: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 19.0,
                            left: 55.0,
                            right: 85.28
                          )
                        ),
                      Text(
                        "X-Pato Frango",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                        text: "20%",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w900,
                          fontSize: 12.0,
                        ),
                        children: [
                          TextSpan(
                            text: " de Desconto",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            )
                          )
                        ]
                      )
                      ),
                      RichText(
                        text: TextSpan(
                        text: "R\$",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                          fontSize: 10.0,
                        ),
                        children: [
                          TextSpan(
                            text: "0,00",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            )
                          ),
                          TextSpan(
                            text: "  \R\$",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 8.0,
                            
                            )
                          ),
                          TextSpan(
                            text: "0,00",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xFFFB1818)
                          ),
                          )
                        ]
          
                      )
                      ),
                      
                    ],)
                    ,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 34.0,
                  bottom: 39.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0,4)
                        )]
                      ),
                      height: 138.0,
                      width: 126.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)
                          ),
                          primary: Color(0xFFFFFFFF),
                          onPrimary: Color(0xFF434343),
                        ),
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              PatoBurguerIcons.hamburguer_icon,
                              color: Color(0xFFFF9B0D),
                              size: 75.0
                            ),
                            Text(
                              "Cardápio",
                              style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto"
                              )
                            )
                          ],)
                      ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0,4)
                        )]
                      ),
                      height: 138.0,
                      width: 126.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)
                          ),
                          primary: Color(0xFFFFFFFF),
                          onPrimary: Color(0xFF434343),
                        ),
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              PatoBurguerIcons.phone_icon,
                              color: Color(0xFFFF9B0D),
                              size: 75.0
                            ),
                            Text(
                              "Contato",
                              style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto"
                              )
                            )
                          ],)
                      ),
                      ),
                  ],
                ),
              )
              ],),
          ),
            
        ),
            
        )
      );
  }
}
  
