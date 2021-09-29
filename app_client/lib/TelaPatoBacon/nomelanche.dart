// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NomeLanche extends StatefulWidget {

  @override
  _NomeLancheState createState() => _NomeLancheState();
}

class _NomeLancheState extends State<NomeLanche> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.only(
                        left: 25.0,
                        top: 106.46,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "X-Pato Bacon",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ],
                      )
                    ,);
  }
}