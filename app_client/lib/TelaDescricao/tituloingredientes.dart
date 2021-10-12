// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TituloIngredientes extends StatefulWidget {

  @override
  _TituloIngredientesState createState() => _TituloIngredientesState();
}

class _TituloIngredientesState extends State<TituloIngredientes> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height)*0.0125,
                            left: (MediaQuery.of(context).size.width)*0.0694,
                          ),
                          child: Text(
                            "Ingredientes",
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontSize: (MediaQuery.of(context).size.height)*0.028125,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal
                            )
                          ),
                        ),
                      ],
                    );
  }
}