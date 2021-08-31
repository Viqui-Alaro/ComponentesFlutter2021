

import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children:<Widget> [
          _cardTipo1()
        ],
      ),
    );
  }

Widget  _cardTipo1() {

  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
        )
      ],
    ),
  );
}
}