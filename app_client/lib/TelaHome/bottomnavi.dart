// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 70.0,
          child: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xFFFFFFFF),
            iconSize: 30.0,
            elevation: 0.0,
            backgroundColor: Color(0xFFFF9B0D),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFFFFFFF),
                  ),
                  label: "Home"
                  ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_sharp,
                  color: Color(0xFFFFFFFF),
                  ),
                  label: "Sobre Nós"
                  )
            ],),
        );
  }
}