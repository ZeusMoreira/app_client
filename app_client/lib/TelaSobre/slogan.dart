import 'package:flutter/material.dart';

class SloganPato extends StatefulWidget {

  @override
  _SloganPatoState createState() => _SloganPatoState();
}

class _SloganPatoState extends State<SloganPato> {
  @override
  Widget build(BuildContext context) {
    return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height*0.028125,
                              right: MediaQuery.of(context).size.width*0.1055,
                              left: MediaQuery.of(context).size.width*0.1055
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7777,
                              height: MediaQuery.of(context).size.height*0.08125,
                              child: Text(
                                '"Fruto de um amor,\ndistribuindo amor!"',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height*0.0375,
                                  fontWeight: FontWeight.w700

                                )
                              )
                            )
                          )
                      ],);
  }
}