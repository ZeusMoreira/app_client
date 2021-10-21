// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math';

import 'package:app_client/TelaHome/design.dart';
import 'package:app_client/TelaSobre/sobre.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget{

  @override
  _TelaHomeState createState() => _TelaHomeState();

  }

class _TelaHomeState extends State<TelaHome>{

  late Future userFuture;
  int _currentIndex = 0;

  @override
  void initState(){
    super.initState();
    userFuture = getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFFF9B0D),
          body: FutureBuilder(
              future: userFuture,
              builder: (context,AsyncSnapshot snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          return Text('none');
                        case ConnectionState.active:
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                        case ConnectionState.done:
                          if (snapshot.hasError) {
                            return Center(child: CircularProgressIndicator());
                          }
                          var arr = [];
                          final _random = new Random();
                          for(int i=0; i < snapshot.data.length-1; i++){
                            String id = snapshot.data['lunch'][i];
                            if(snapshot.data[id]['promo'] == true){
                              arr.add(snapshot.data['lunch'][i]);
                            }
                          }
                          var element = arr[_random.nextInt(arr.length)];
                          var element2 = arr[_random.nextInt(arr.length)];

                          final screens = [
                            Design(element,element2),
                            Sobre(),
                          ];
                          return screens[_currentIndex];
                        default:
                          return Text('default');
                      }
              }),
          bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Color(0xFFDCDCDC),
                selectedItemColor: Color(0xFFFFFFFF),
                iconSize: 40,
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

getData() async{
  var a = await FirebaseFirestore.instance
      .collection('PatoBurguer')
      .doc('lanches')
      .get();
  return a.data();
}


