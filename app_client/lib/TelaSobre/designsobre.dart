// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesignSobre extends StatefulWidget {

  @override
  _DesignSobreState createState() => _DesignSobreState();
}

class _DesignSobreState extends State<DesignSobre> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)
                )
              ),
              height: (MediaQuery.of(context).size.height)/1.12,
              width: 360.0,
                
                  
                  ),
              
              
      ]
    );
  }
}