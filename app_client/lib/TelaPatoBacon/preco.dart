// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Preco extends StatefulWidget {

  @override
  _PrecoState createState() => _PrecoState();
}

class _PrecoState extends State<Preco> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height)*0.0125,
                            left: (MediaQuery.of(context).size.width)*0.0694,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "R\$",
                                style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontSize: (MediaQuery.of(context).size.height)*0.01875,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal
                            ),
                            children: [
                              TextSpan(
                                text: " 20,00",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  color: Color(0xFF434343),
                                  fontSize: (MediaQuery.of(context).size.height)*0.03125,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal
                                )
                              ),
                              TextSpan(
                                text: "   R\$",
                                style: TextStyle(
                                  color: Color(0xFFFF9B0D),
                                  fontSize: (MediaQuery.of(context).size.height)*0.03125,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal
                                )
                              ),
                              TextSpan(
                                text: " 16,00",
                                style: TextStyle(
                                  color: Color(0xFF434343),
                                  fontSize: (MediaQuery.of(context).size.height)*0.046875,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal
                              )
                              )
                            ]
                            ),
                            
                          ),
                        ),
                      ],
                    );
  }
}