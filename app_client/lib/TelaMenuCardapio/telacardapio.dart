import 'package:app_client/TelaHome/telahome.dart';
import 'package:flutter/material.dart';
import './itenscardapio.dart';
import 'acompanhamento.dart';
import 'bebidas.dart';
import 'combos.dart';
import 'lanche.dart';


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
          backgroundColor: Color(0xFFFF9B0D),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => Padding(
              padding: EdgeInsets.only(left: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05, top: MediaQuery
                  .of(context)
                  .size
                  .height * 0.005),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_sharp),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => TelaHome()));
                },
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: MediaQuery
                .of(context)
                .size
                .height * 0.005),
            child: Text(
              "Cardápio",
              style: new TextStyle(
                  fontSize: (MediaQuery.of(context).size.height)*0.0375,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w900),
            ),
          ),
        bottom: TabBar(
          padding: EdgeInsets.only(left: 10, right: 10, top: 0),
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


        ),
          body: TabBarView(
            children: [
              ItensCardapio(),
              LancheAba(),
              ComboAba(),
              BebidaAba(),
              AcompanhamentoAba(),
            ],
          )
        ),
    );
  }
}