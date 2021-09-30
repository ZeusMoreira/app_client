// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_client/assets/pb_icons.dart';
import 'package:flutter/material.dart';

class Cardapio extends StatefulWidget {

  @override
  _CardapioState createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0,4)
                        )]
                      ),
                      height: (MediaQuery.of(context).size.height)*0.2156,
                      width: (MediaQuery.of(context).size.width)*0.35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)
                          ),
                          primary: Color(0xFFFFFFFF),
                          onPrimary: Color(0xFF434343),
                        ),
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              PatoBurguerIcons.hamburguer_icon,
                              color: Color(0xFFFF9B0D),
                              size: (MediaQuery.of(context).size.height)*0.1171,
                            ),
                            Text(
                              "Cardápio",
                              style: TextStyle(
                                color: Color(0xFFFF9B0D),
                                fontSize: (MediaQuery.of(context).size.height)*0.03125,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto"
                              )
                            )
                          ],)
                      ),
                      );
  }
}