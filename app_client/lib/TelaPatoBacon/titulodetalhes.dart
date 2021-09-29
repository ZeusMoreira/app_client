// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TituloDetalhes extends StatefulWidget {


  @override
  _TituloDetalhesState createState() => _TituloDetalhesState();
}

class _TituloDetalhesState extends State<TituloDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 25.0,
                          ),
                          child: Text(
                            "Detalhes",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal
                            )
                          ),
                        ),
                      ],
                    );
  }
}