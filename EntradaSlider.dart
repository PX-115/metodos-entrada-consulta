import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _fovSlider = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                child: Text('FOV: '),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Slider(
                  value: _fovSlider,
                  min: 60,
                  max: 120,
                  label: '$_fovSlider',
                  divisions: 60,
                  onChanged: (double valor){
                    setState(() {
                      _fovSlider = valor;         
                    });
                  },
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(0),
                child: RaisedButton(
                  child: Text('Salvar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){
                    print('FOV: ' + _fovSlider.toString());
                  },
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}