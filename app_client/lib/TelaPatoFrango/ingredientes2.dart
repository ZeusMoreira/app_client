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
                                    "Pão de milho, alface, tomate e filé de frango",
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