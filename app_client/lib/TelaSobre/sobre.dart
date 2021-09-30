import 'package:app_client/TelaSobre/designsobre.dart';
import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: DesignSobre());
  }
}