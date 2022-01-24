import 'dart:math';

import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre="";
  String _email  = '';
   String _fecha  = '';
  String _opcionSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];
  TextEditingController _inputFieldDateController = new TextEditingController();
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
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPersona(),
          Divider(),
            
          _crearDropdown(),
     Divider(),
          _crearFecha( context )
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text("Letras ${ _nombre.length}"),
        hintText: 'Nombre',
        labelText: 'Apellido',
        helperText: "Introducir el Nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
           _nombre = valor;
        });
      },
    );
  }


  Widget _crearEmail(){
     return TextField(
       keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor) =>setState(() {
        _email = valor;
      })
    );
  }


Widget _crearFecha(BuildContext){
return TextField(
  enableInteractiveSelection: false,
  controller: _inputFieldDateController,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0)
    ),
    hintText: 'Fecha de nacimiento',
    labelText: 'Fecha de nacimiento',
    suffixIcon: Icon(Icons.perm_contact_calendar)
  ),
  onTap: (){
    FocusScope.of(context).requestFocus(new FocusNode());
    _selectDate(context);
  },
);
}
  _selectDate(BuildContext context) async {

    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025)

    );

    if ( picked != null ) {
      setState(() {
          _fecha = picked.toString();
          _inputFieldDateController.text = _fecha.substring(0,10);
      }); 
    }

  }




  Widget _crearPersona(){
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );

  }

    Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),   
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = (opt) as String;
              });
            },
          ),
        )

      ],
    );
    
    
    
    

  }
    List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach( (poder){

      lista.add( DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));

    });

    return lista;

  }

}