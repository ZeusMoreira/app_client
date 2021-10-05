import 'package:flutter/material.dart';
import 'appbar.dart';
import './itenscardapio.dart';
import './menucardapio.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();

  }
  

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ReusableWidgets.getAppBar('Cardápio'),
        backgroundColor: Color(0xFFFF9B0D),
        body: SafeArea(child: 
          Column(
            children: [
              MenuCardapio(),
              ItensCardapio(),
            ],
          ),
        ), 
      )
     );
  }
}