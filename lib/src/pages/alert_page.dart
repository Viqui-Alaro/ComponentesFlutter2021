import 'package:flutter/material.dart';


 class AlertPage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:()=> _mostrarAlert(context),
          child: Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: StadiumBorder()
          ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backpack),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('Titulo'),
          content: Text('Contenido'),
        );
      }
    );
  }
}