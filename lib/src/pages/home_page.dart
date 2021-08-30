import 'package:flutter/material.dart';
 
import 'package:componentes/src/providers/menu_provider.dart';
 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }
 
  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error'));
        }
 
        if (!snapshot.hasData) {
          return Center(child: Text('No hay data'));
        }
 
        return ListView(
          children: _getListItems(snapshot.data),
        );
      },
    );
  }
 
 
  List<Widget> _getListItems(List<dynamic>? items) {
    final List<Widget> options = [];
 
    items?.forEach((element) {
      final tmp = ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
 
      options..add(tmp)..add(Divider());
    });
 
    return options;
  }
}