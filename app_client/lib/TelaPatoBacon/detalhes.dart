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
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 25.0,
                            right: 25.0
                          ),
                          child: Column(
                            children: [
                                Container(
                                  height: 50,
                                  width: 308,
                                  child: Text(
                                    "Perguntar ao cliente o que colocar nos detalhes",
                                    style: TextStyle(
                                      color: Color.fromRGBO(67, 67, 67, 0.6),
                                      fontSize: 14.0,
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