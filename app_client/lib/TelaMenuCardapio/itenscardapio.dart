import 'package:app_client/TelaDescricao/descricao.dart';
import 'package:flutter/material.dart';

class ItensCardapio extends StatefulWidget {
  @override
  _ItensCardapioState createState() => _ItensCardapioState();
}

class _ItensCardapioState extends State<ItensCardapio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            height: (MediaQuery.of(context).size.height)*0.7815,
            width: double.infinity,
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(30),
              crossAxisSpacing: 26,
              mainAxisSpacing: 32,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              children: [
                ItemCard(),
                ItemCard(),
                ItemCard(),
                ItemCard(),
                ItemCard(),
                ItemCard(),
              ],
            )),
      )
    ;
  }
}

class ItemCard extends StatefulWidget {
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => DescricaoItem()));},
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFCB82),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x3F000000),
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: ContentCard(),
      ),
    );
  }
}

class ContentCard extends StatefulWidget {
  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 80),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: InfoCard(),
            ),
          ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 128,
              padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: Image.asset(
                'assets/images/pato-bacon_solo.png',
                fit: BoxFit.fill,
                )
              ),
          )
        )
      ],
    );
  }
}

class InfoCard extends StatefulWidget {
  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text(
            'X-Lombo de Pato',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xFF434343),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
          Padding(
           padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 0),
           child: Text('R\$',
                    style: TextStyle(
                     fontFamily: 'Roboto',
                     color: Color(0xFFFF9B0D),
                     fontWeight: FontWeight.bold,
                   ),),),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
            child: Text('0,00',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xFF434343),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),),)
           ],)
      ],
    );
  }
}