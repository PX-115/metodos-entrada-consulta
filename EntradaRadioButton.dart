import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _grupoXesque;

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

              RadioListTile(
                title: Text('Xesque'),
                value: 'xesque',
                groupValue: _grupoXesque,
                onChanged: (String escolha){
                  setState(() {
                    _grupoXesque = escolha;                    
                  });
                },
              ),

              RadioListTile(
                title: Text('Bresque'),
                value: 'bresque',
                groupValue: _grupoXesque,
                onChanged: (String escolha){
                  setState(() {
                    _grupoXesque = escolha;                    
                  });
                },
              ),

              RadioListTile(
                title: Text('Lesque'),
                value: 'lesque',
                groupValue: _grupoXesque,
                onChanged: (String escolha){
                  setState(() {
                    _grupoXesque = escolha;                    
                  });
                },
              ),

              RaisedButton(
                child: Text('Salvar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                onPressed: (){
                  print('Escolha: ' + _grupoXesque.toString());
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}