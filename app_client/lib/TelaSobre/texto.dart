import 'package:flutter/material.dart';

class TextoHistoria extends StatefulWidget {

  @override
  _TextoHistoriaState createState() => _TextoHistoriaState();
}

class _TextoHistoriaState extends State<TextoHistoria> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height)*0.35125,
                            right: (MediaQuery.of(context).size.width)*0.0555,
                            left: (MediaQuery.of(context).size.width)*0.0555
                          ),
                          child: Container(
                            width: (MediaQuery.of(context).size.width)*0.8788,
                            height: MediaQuery.of(context).size.height*0.32625,
                            child: Text(
                              "    A Pato Burguer é uma empresa familiar que surgiu  a partir de uma homenagem que Yasmin e Shino quiseram fazer para o resultado de seu amor: o Pato.\n    Com mais de 10 anos de experiência no ramo alimentício, a Pato Burguer reúne as melhores vantagens de uma empresa familiar, o respeito pelo cliente, reconhecimento das suas raízes e, acima de tudo, amor pela culinária.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xFF434343),
                                fontSize: MediaQuery.of(context).size.height*0.025,
                                fontWeight: FontWeight.w500
                              )

                            )
                          )


                          )
                      ],);
  }
}