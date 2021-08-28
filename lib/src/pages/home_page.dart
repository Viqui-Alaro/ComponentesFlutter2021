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

  return FutureBuilder(
    future: menuProvider.cargarData(),
   // initialData: [],
    // initialData: [],
   builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
    
       print(snapshot.data);
     return ListView(
    children: _listaItems( snapshot.data ),
     );
   },
  );
}




 List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) { 
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.ac_unit_rounded, color: Colors.amber),
        trailing: Icon(Icons.ac_unit_rounded, color: Colors.amber),
        onTap: (){

        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}