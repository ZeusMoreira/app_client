import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            bottom: 275.5,
            left: 40,
            right: 54.0,
            child: Container(
              height: 275.5,
              width: 266,
              child: Image.asset(
                "assets/images/pato-frango.png",
              ),
            )
            );
  }
}