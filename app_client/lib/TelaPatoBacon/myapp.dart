import 'package:app_client/TelaPatoBacon/design.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Design(),
    );
  }
}