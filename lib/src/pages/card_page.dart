

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
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

Widget  _cardTipo1() {

  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
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


Widget  _cardTipo2() {
  return Column(
    children: <Widget> [
      FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image:  NetworkImage('https://i0.wp.com/www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg'),
        fadeInDuration: Duration(milliseconds: 200),
        fit: BoxFit.cover,
        height: 300.0,),

      Container(
        padding: EdgeInsets.all(10.0),
        child: Text('Hola mundo '))
    ],
  );
 }
}