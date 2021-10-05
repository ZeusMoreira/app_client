import 'package:flutter/material.dart';

class ItensCardapio extends StatefulWidget {
  @override
  _ItensCardapioState createState() => _ItensCardapioState();
}

class _ItensCardapioState extends State<ItensCardapio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
        height: 560,
        width: double.infinity,
        //child: SingleChildScrollView(
        //  child: ListView.builder(itemBuilder: itemBuilder)),
      ),
    );
  }
}
