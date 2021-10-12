import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {

  @override
  _ImagemState createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            right: (MediaQuery.of(context).size.width)*0.1305,
            left: (MediaQuery.of(context).size.width)*0.1305,
            top: (MediaQuery.of(context).size.height)*0.073125,
              child: 
                  Image.asset(
                  "assets/images/pato-bacon_solo.png",
                  fit: BoxFit.fill,
                  height: (MediaQuery.of(context).size.height)*0.3504,
                  width: (MediaQuery.of(context).size.width)*0.7388,
                  
                  
                ),
              )
            ;
  }
}