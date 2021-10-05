import 'package:flutter/material.dart';

class ItensCardapio extends StatefulWidget {
  @override
  _ItensCardapioState createState() => _ItensCardapioState();
}

class _ItensCardapioState extends State<ItensCardapio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), 
              topRight: Radius.circular(20.0))),
          width: 360,
          height: 504,
    );
  }
}
