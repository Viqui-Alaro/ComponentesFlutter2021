import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),

      ),
      body: _lista(),
    );
  }

Widget _lista() {

 // print(menuProvider.opciones);

  menuProvider.cargarData().then((opciones) {
     print('_lista');
     print(opciones);
  });

  return ListView(
    children: _listaItems(),
  );
}




  _listaItems() {
    return [
      ListTile( title: Text('Hola Mundo')),
      Divider(),
      ListTile( title: Text('Hola Mundo')),
      Divider(),
      ListTile( title: Text('Hola Mundo')),
    ];
  }
}