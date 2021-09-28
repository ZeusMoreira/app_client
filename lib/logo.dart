// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
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
                ],);
  }
}