import 'package:flutter/material.dart';

class TituloHistoria extends StatefulWidget {

  @override
  _TituloHistoriaState createState() => _TituloHistoriaState();
}

class _TituloHistoriaState extends State<TituloHistoria> {
  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.height)*0.05,
                          right: (MediaQuery.of(context).size.width)*0.1505,
                          left: (MediaQuery.of(context).size.width)*0.1805
                        ),
                        child: Container(
                          child: Text(
                            "História da Pato Burguer",
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: (MediaQuery.of(context).size.height)*0.03125,
                              fontWeight: FontWeight.w900
                            )
                          )
                          )
                        )
                    ],);
  }
}