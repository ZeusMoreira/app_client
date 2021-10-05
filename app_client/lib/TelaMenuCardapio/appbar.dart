import 'package:flutter/material.dart';

class ReusableWidgets {
  static getAppBar(String title) {
    return AppBar(
      leading: Builder(
        builder: (context) =>
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            },
      ),),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
      ),
      backgroundColor: Color(0xFFFF9B0D),
      elevation: 0,
    );
  }
}