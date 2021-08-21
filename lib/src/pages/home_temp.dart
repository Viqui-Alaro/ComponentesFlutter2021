import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Hola Viqui'),
          ),
          Divider(),
          ListTile(
            title: Text('Hola Viqui'),
          ),
          Divider(),
          ListTile(
            title: Text('Hola Viqui'),
          )
        ],
      ),
    );
  }
}