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
            primary: Colors.blue,
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Es una alerta de la caja'),
              FlutterLogo(size: 100.0)
            ],
          ),
          actions: <Widget>[
            TextButton(child: Text('Cancelar'),
            onPressed: ()=>
            Navigator.of(context).pop(),
            ),
            TextButton(child: Text('Ok'),
            onPressed: ()=>
            Navigator.of(context).pop(),
            )
          ],
        );
      }
    );
  }
}