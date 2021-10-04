// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContatoInfo extends StatefulWidget {
  @override
  _ContatoInfoState createState() => _ContatoInfoState();
}

class _ContatoInfoState extends State<ContatoInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Endereço:",
                style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          height: 10.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Av. Campo Grande, 66",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Campo Grande- MS",
                style: new TextStyle(
                    fontSize: 10.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
        Container(
          height: 17.0,
        ),
        Row(children: [
          Expanded(
              child: Divider(
            color: Color(0xFFC4C4C4),
          ))
        ]),
        Container(
          height: 14.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Horários de Funcionamento:",
                style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
        Container(
          height: 15.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Segunda à Sexta",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 132.0,
            ),
            Container(
              child: Text(
                "18:00 - 01:00",
                style: new TextStyle(
                    fontSize: 10.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          height: 10.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Sabádo",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 187.0,
            ),
            Container(
              child: Text(
                "18:00 - 03:00",
                style: new TextStyle(
                    fontSize: 10.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          height: 15.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
            ),
            Container(
              child: Text(
                "Domingo e Feriados",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 111.0,
            ),
            Container(
              child: Text(
                "18:00 - 00:00",
                style: new TextStyle(
                    fontSize: 10.0,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFFFB54B),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          height: 13.0,
        ),
        Row(children: [
          Expanded(
              child: Divider(
            color: Color(0xFFC4C4C4),
          ))
        ]),
        Container(
          height: 16.0,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 36.0,
              ),
              Container(
                child: Text(
                  "Faça seu pedido em:",
                  style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ]),
        Container(
          height: 15.0,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 36.0,
              ),
              Icon(
                MdiIcons.whatsapp,
                color: Color(0xFFFFB54B),
                size: 20,
              ),
              Container(
                width: 3.0,
              ),
              Container(
                child: Text(
                  "(67)4002-8922",
                  style: new TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ]),
        Container(
          height: 31.0,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 36.0,
              ),
              Container(
                child: Text(
                  "Redes Sociais:",
                  style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ]),
        Container(
          height: 22.44,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 36.0,
              ),
              Icon(
                MdiIcons.facebook,
                color: Color(0xFFFFB54B),
                size: 20,
              ),
              Container(
                width: 3.0,
              ),
              Container(
                child: Text(
                  "PatoBurguerOficial",
                  style: new TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ]),
        Container(
          height: 11.0,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 36.0,
              ),
              Icon(
                MdiIcons.instagram,
                color: Color(0xFFFFB54B),
                size: 20,
              ),
              Container(
                width: 3.0,
              ),
              Container(
                child: Text(
                  "@patoburguer",
                  style: new TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ]),
      ],
    );
  }
}
