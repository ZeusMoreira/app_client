// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_client/TelaHome/design.dart';
import 'package:app_client/TelaSobre/sobre.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();

  }

class _MyAppState extends State<MyApp>{
  int _currentIndex = 0;

  final screens = [
    Design(),
    Sobre()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFFF9B0D),
          body: screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Color(0xFFDCDCDC),
                selectedItemColor: Color(0xFFFFFFFF),
                iconSize: 40.0,
                elevation: 0.0,
                backgroundColor: Color(0xFFFF9B0D),
                currentIndex: _currentIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,                    ),
                      label: "Home"
                      ),
                  BottomNavigationBarItem(
             
                    icon: Icon(
                      Icons.info_sharp,                    ),
                      label: "Sobre Nós"
                      )
                ],
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
                ),
        ),
        
        
    );
  }
}