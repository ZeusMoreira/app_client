// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Ingredientes extends StatefulWidget {

  @override
  _IngredientesState createState() => _IngredientesState();
}

class _IngredientesState extends State<Ingredientes> {
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
                                    "Pão de hambúrguer com gergelim, alface, tomate, cebola, molho especial da casa, 2 hambúrgueres, filé de frango e muito bacon.",
                                    textAlign: TextAlign.justify,
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