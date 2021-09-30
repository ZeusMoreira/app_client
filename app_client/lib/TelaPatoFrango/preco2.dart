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
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 25.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "R\$",
                                style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal
                            ),
                            children: [
                              TextSpan(
                                text: " 15,00",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  color: Color(0xFF434343),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal
                                )
                              ),
                              TextSpan(
                                text: "   R\$",
                                style: TextStyle(
                                  color: Color(0xFFFF9B0D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal
                                )
                              ),
                              TextSpan(
                                text: " 12,75",
                                style: TextStyle(
                                  color: Color(0xFF434343),
                                  fontSize: 30,
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