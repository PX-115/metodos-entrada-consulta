import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _popupNotifications = false;
  bool _pushNotifications = false;
  bool _emailNotifications = false;

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

              SwitchListTile(
                title: Text('Receber notificações Pop-Up'),
                value: _popupNotifications,
                onChanged: (bool popup){
                  setState(() {
                    _popupNotifications = popup;                    
                  });
                },
              ),

              SwitchListTile(
                title: Text('Receber notificações Push'),
                value: _pushNotifications,
                onChanged: (bool push){
                  setState(() {
                    _pushNotifications = push;                    
                  });
                },
              ),

              SwitchListTile(
                title: Text('Receber notificações Pop-Up'),
                value: _emailNotifications,
                onChanged: (bool email){
                  setState(() {
                    _emailNotifications = email;              
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
                  print('Pop-Up: ' + _popupNotifications.toString() +
                        ' // Push: ' + _pushNotifications.toString() +
                        ' // Email: ' + _emailNotifications.toString()
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