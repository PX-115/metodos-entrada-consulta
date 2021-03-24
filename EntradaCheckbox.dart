import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _lepao = false;
  bool _grongos = false;
  bool _bandeirantes = false;

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

              CheckboxListTile(
                title: Text('Bandeirantes'),
                subtitle: Text('O canal do esporte'),
                value: _bandeirantes,
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (bool novoValor) {
                  setState(() {
                   _bandeirantes = novoValor;
                  });
                }
              ),

              CheckboxListTile(
                title: Text('Kk'),
                subtitle: Text('É o Grongos'),
                value: _grongos,
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (bool novoValor) {
                  setState(() {
                   _grongos = novoValor;
                  });
                }
              ),

              CheckboxListTile(
                title: Text('Fala aí galerinha do mal'),
                subtitle: Text('Lepão na área'),
                value: _lepao,
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (bool novoValor) {
                  setState(() {
                   _lepao = novoValor;
                  });
                }
              ),

              RaisedButton(
                child: Text('Salvar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                onPressed: (){
                  print('Bandeirantes: ' + _bandeirantes.toString() +
                        '// Kk é o grongos? ' + _grongos.toString() +
                        '// Lepão na área: ' + _lepao.toString()
                  );
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}