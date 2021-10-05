import 'package:flutter/material.dart';

class ReusableWidgets {
  static getAppBar(String title) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded,
        color: Colors.white,
        size: 24,),
        onPressed: (){},
      ),
      centerTitle: true,
      title: Text(title, style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),),
      backgroundColor: Color(0xFFFF9B0D),
      elevation: 0,
    );
  }
}