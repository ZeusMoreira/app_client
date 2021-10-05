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
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.025,
            left: (MediaQuery.of(context).size.width)*0.0888

          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Container(
                child: Text(
                  "Endereço:",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.028125,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height)*0.015625,
                  left: (MediaQuery.of(context).size.width)*0.0888
                ),
                child: Container(
                  child: Text(
                    "Av. Campo Grande, 66",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width)*0.0888
              ),
              child: Container(
                child: Text(
                  "Campo Grande- MS",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.015625,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              ),
            )
          ],
        ),
    
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0265625
          ),
          child: Row(children: [
            Expanded(
                child:  SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
          child: 
            const ColoredBox(color: Color((0xFFC4C4C4)))
          
        ))
          ]),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.021875,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Horários de Funcionamento:",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.028125,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        ),
        
        Padding(
          padding:  EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0234375,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Segunda à Sexta",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              ),
             
              Container(
                child: Padding(
                  padding: EdgeInsets.only(  //Arrumar depois
                    left: (MediaQuery.of(context).size.width)*0.3666,
                  ),
                  child: Text(
                    "18:00 - 01:00",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.015625,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
    
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.015625,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Sabádo",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width)*0.52944
                ),  //Arrumar depois
                child: Container(
                  child: Text(
                    "18:00 - 03:00",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.015625,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
       
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0234375,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Domingo e Feriados",
                  style: new TextStyle(
                      fontSize: (MediaQuery.of(context).size.height)*0.0203125,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFB54B),
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width)*0.31533
                ),
                child: Container(
                  child: Text(
                    "18:00 - 00:00",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.015625,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0265625
          ),
          child: Row(children: [
            Expanded(
                child:  SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
          child: 
            const ColoredBox(color: Color((0xFFC4C4C4)))
          
        ))
          ]),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.025,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Faça seu pedido em:",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.028125,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                )
              ]),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0234375,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  MdiIcons.whatsapp,
                  color: Color(0xFFFFB54B),
                  size: (MediaQuery.of(context).size.height)*0.03125,
                ),
                
                Padding(
                  padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.width)*0.0083
                  ),
                  child: Container(
                    child: Text(
                      "(67)4002-8922",
                      style: new TextStyle(
                          fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          color: Color(0xFFFFB54B),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                )
              ]),
        ),        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0484375,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Redes Sociais:",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.028125,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                )
              ]),
        ),
        
        Padding(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0350625,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Icon(
                  MdiIcons.facebook,
                  color: Color(0xFFFFB54B),
                  size: (MediaQuery.of(context).size.height)*0.03125,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width)*0.0083,
                ),
                Container(
                  child: Text(
                    "PatoBurguerOficial",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                )
              ]),
        ),
        
        Padding(
          padding:  EdgeInsets.only(
            top: (MediaQuery.of(context).size.height)*0.0171875,
            left: (MediaQuery.of(context).size.width)*0.0888
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  MdiIcons.instagram,
                  color: Color(0xFFFFB54B),
                  size: (MediaQuery.of(context).size.height)*0.03125,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width)*0.0083,
                ),
                Container(
                  child: Text(
                    "@patoburguer",
                    style: new TextStyle(
                        fontSize: (MediaQuery.of(context).size.height)*0.0234375,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFB54B),
                        fontWeight: FontWeight.w900),
                  ),
                )
              ]),
        ),
      ],
    );
  
  }
}