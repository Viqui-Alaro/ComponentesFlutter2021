import 'package:flutter/material.dart';


 class AlertPage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backpack),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}