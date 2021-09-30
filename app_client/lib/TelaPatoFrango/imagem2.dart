import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: (MediaQuery.of(context).size.height)*0.053125,
            left: (MediaQuery.of(context).size.width)*0.01,
            right: (MediaQuery.of(context).size.width)*0.01,
            child: Container(
              height: (MediaQuery.of(context).size.height)*0.4304,
              width: (MediaQuery.of(context).size.width)*0.7388,
              child: Image.asset(
                "assets/images/pato-frango.png",
              ),
            )
            );
  }
}