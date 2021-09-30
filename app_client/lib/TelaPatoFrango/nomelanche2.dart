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
                        left: (MediaQuery.of(context).size.width)*0.06944,
                        top: (MediaQuery.of(context).size.height)*0.1663,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "X-Pato Frango",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: (MediaQuery.of(context).size.height)*0.0375,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ],
                      )
                    ,);
  }
}