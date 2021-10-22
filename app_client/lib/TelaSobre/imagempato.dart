// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class ImagemPato extends StatefulWidget {

  @override
  _ImagemPatoState createState() => _ImagemPatoState();
}

class _ImagemPatoState extends State<ImagemPato> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: (MediaQuery.of(context).size.height)*0.1153,
            right: (MediaQuery.of(context).size.width)*0.011388,
            left: (MediaQuery.of(context).size.width)*0.013611,
            child: Image.asset(
              "assets/images/familia-pato-transp.png",
              width: (MediaQuery.of(context).size.width)*0.75,
              height: (MediaQuery.of(context).size.height)*0.3078125,
            )
          );
  }
}