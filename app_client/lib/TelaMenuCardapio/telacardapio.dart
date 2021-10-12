import 'package:flutter/material.dart';
import 'appbarcard.dart';
import './itenscardapio.dart';
import './menucardapio.dart';


class TelaCardapio extends StatefulWidget{

  @override
  _TelaCardapioState createState() => _TelaCardapioState();

  }
  

class _TelaCardapioState extends State<TelaCardapio>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableWidgets.getAppBar('Cardápio'),
        backgroundColor: Color(0xFFFF9B0D),
        body: SafeArea(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MenuCardapio(),
              ItensCardapio(),
            ],
          ),
        ), 
      );
  }
}