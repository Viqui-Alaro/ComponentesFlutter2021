import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical:20.0 ),
        children: <Widget>[
          _crearInput(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField();
  }
}