import 'package:flutter/material.dart';


 class AvatarPage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avater Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage('https://www.buenamusica.com/media/fotos/cantantes/biografia/selena-gomez.jpg',scale: 1),
                radius: 30.0,
                
            ),
          ),
          Container(
            margin:EdgeInsets.only(right: 10.0),
            child:CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ) 
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            image: NetworkImage('https://www.buenamusica.com/media/fotos/cantantes/biografia/selena-gomez.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'), 
          fadeInDuration: Duration(milliseconds: 200),
      )
      ),
    );
  }
}