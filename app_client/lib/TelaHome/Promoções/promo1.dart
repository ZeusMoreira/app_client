// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_client/TelaPatoBacon/myapp.dart';
import 'package:flutter/material.dart';

class PromoUm extends StatefulWidget {

  @override
  _PromoUmState createState() => _PromoUmState();
}

class _PromoUmState extends State<PromoUm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Background()),
                        );},
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
                            text: "16,00",
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
                            text: "20,00",
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
              );
  }
}