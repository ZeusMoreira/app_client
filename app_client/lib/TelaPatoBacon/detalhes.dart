// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {

  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height)*0.0125,
                            left: (MediaQuery.of(context).size.width)*0.0694,
                            right: (MediaQuery.of(context).size.width)*0.0694
                          ),
                          child: Column(
                            children: [
                                Container(
                                  height: (MediaQuery.of(context).size.height)*0.078125,
                                  width: (MediaQuery.of(context).size.width)*0.8555,
                                  child: Text(
                                    "Perguntar ao cliente o que colocar nos detalhes",
                                    style: TextStyle(
                                      color: Color.fromRGBO(67, 67, 67, 0.6),
                                      fontSize: (MediaQuery.of(context).size.height)*0.021875,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal
                                    )
                                  ),
                                )
                              
                              ],
                            ),
                          ),
                        ],
                      );
  }
}