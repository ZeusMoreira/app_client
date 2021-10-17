import 'package:app_client/TelaHome/telahome.dart';
import 'package:flutter/material.dart';
import './itenscardapio.dart';


class TelaCardapio extends StatefulWidget{

  @override
  _TelaCardapioState createState() => _TelaCardapioState();

  }
  

class _TelaCardapioState extends State<TelaCardapio>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          // appBar: ReusableWidgets.getAppBar('Cardápio',),
          backgroundColor: Color(0xFFFF9B0D),
          body: SafeArea(child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05, top: MediaQuery.of(context).size.height*0.01),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => TelaHome())
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 28,
                          ),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.2, 
                      top: MediaQuery.of(context).size.height*0.01),
                      child: Text(
                        'Cardápio',
                        style: TextStyle(
                            fontFamily:'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                 TabBar(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900
                    ),
                  labelColor:  Color(0xFFFF9B0D),
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                    ),
                  tabs: [
                    Tab(
            child: Text("PROMOÇÕES")
          ),
          Tab(
            child: Text("LANCHES"),
          ),
          Tab(
            child: Text("COMBOS"),
          ),
          Tab(
            child: Text("BEBIDAS"),
          ),
          Tab(
            child: Text("ACOMPANHAMENTOS"),
          ),
        ],
      ),
        ItensCardapio(),
              ],
            ),
          ), 
        ),
    );
  }
}