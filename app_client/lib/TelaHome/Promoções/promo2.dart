// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_client/TelaPatoFrango/descricaofrango.dart';
import 'package:flutter/material.dart';

class PromoDois extends StatefulWidget {

  @override
  _PromoDoisState createState() => _PromoDoisState();
}

class _PromoDoisState extends State<PromoDois> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.0629,
                  left: MediaQuery.of(context).size.width*0.10,
                  right: MediaQuery.of(context).size.width*0.34
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
                  height: (MediaQuery.of(context).size.height)*0.1503,
                  width: (MediaQuery.of(context).size.width)/1.5487,
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
                                  MaterialPageRoute(builder: (context) => BackgroundFrango()),
                                  );},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height)*0.029,
                            right: (MediaQuery.of(context).size.width)*0.48,
                            bottom: (MediaQuery.of(context).size.height)*0.01
                          )
                        ),
                      Text(
                        "X-Pato Frango",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.bold,
                          fontSize: (MediaQuery.of(context).size.height)*0.01875,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                        text: "15%",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w900,
                          fontSize: (MediaQuery.of(context).size.height)*0.01875,
                        ),
                        children: [
                          TextSpan(
                            text: " de Desconto",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w500,
                              fontSize: (MediaQuery.of(context).size.height)*0.01875,
                            )
                          )
                        ]
                      )
                      ),
                      RichText(
                        // ignore: prefer_const_constructors
                        text: TextSpan(
                        text: "R\$",
                        style: TextStyle(
                          color: Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                          fontSize: (MediaQuery.of(context).size.height)*0.015625,
                        ),
                        children: [
                          TextSpan(
                            text: "12,75",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: (MediaQuery.of(context).size.height)*0.03125,
                            )
                          ),
                          TextSpan(
                            text: "  \R\$",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: (MediaQuery.of(context).size.height)*0.0125,
                            
                            )
                          ),
                          TextSpan(
                            text: "15,00",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w700,
                              fontSize: (MediaQuery.of(context).size.height)*0.0234375,
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