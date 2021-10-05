// ignore_for_file: prefer_const_constructors

import 'package:app_client/TelaContato/contatoinfo.dart';
import 'package:flutter/material.dart';

class ContatoDesign extends StatefulWidget {
  @override
  _ContatoDesignState createState() => _ContatoDesignState();
}

class _ContatoDesignState extends State<ContatoDesign> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0))),
              height: (MediaQuery.of(context).size.height) / 1.2,
              width: double.infinity,
              
                  child: ContatoInfo()),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.003,
          )
          ],
        ),
        
      ],
    );
  }
}