import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget{

  const SliderScreen({Key? key}):super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            value: _sliderValue, 
            onChanged: (value){
             _sliderValue=value;
             setState(() {
          
             });
              
            })
        ],
      )
    ) ;
  }
}