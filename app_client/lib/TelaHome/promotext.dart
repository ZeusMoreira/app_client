// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors 
import 'package:flutter/material.dart';

class PromoText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                    top: 22.0, 
                    left: 31.0,
                    right: 185.0
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