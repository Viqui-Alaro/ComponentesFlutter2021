

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
          title: Text('Hola Viqui Alaro Mamani'),
          subtitle: Text('Bolivia es un país del centro de Sudamérica, con un terreno variado desde los Andes, el Desierto de Atacama y el bosque pluvial en la cuenca del Amazonas. A más de 3,500 m de altura, su capital administrativa, La Paz, se ubica en el Altiplano de los Andes con el monte nevado Illimani de fondo. Cerca se encuentra el cristalino lago Titicaca, el más grande del continente, que se extiende por la frontera con Perú'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: (){

              },
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: (){
                
              },
            ),
          ],
        )
      ],
    ),
  );
}
}