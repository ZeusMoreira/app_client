// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors 
import 'package:flutter/material.dart';

class PromoText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width*0.1218, 
                    right: MediaQuery.of(context).size.width*0.5027,
                    left: MediaQuery.of(context).size.width*0.0842

                  ),
                  child: RichText(
                    text: TextSpan(
                      text: "Promoção",
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 22.0,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900
                      ),
                      children: [
                        TextSpan(
                          text: "  Semanal",
                          style: TextStyle(
                            color: Color(0xFFFF9B0D),
                            fontSize: 22.0,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900
                      )
                    )]
                  ),
                  )
                  )],
              );
  }
}