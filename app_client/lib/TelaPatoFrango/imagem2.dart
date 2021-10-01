import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            right: (MediaQuery.of(context).size.width)*0.03,
            left: (MediaQuery.of(context).size.width)*0.03,
            top: (MediaQuery.of(context).size.height)*0.073125,
              child: Image.asset(
                "assets/images/pato-frango.png",
                fit: BoxFit.fill,
                height: (MediaQuery.of(context).size.height)*0.374,
                width: (MediaQuery.of(context).size.width)*0.8388
              ),
            )
          ;
  }
}