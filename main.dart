import 'package:atm_consultoria/TelaPrincipal.dart';
import 'package:flutter/material.dart';
//import 'package:atm_consultoria/EntradaDados.dart';
//import 'package:atm_consultoria/EntradaCheckbox.dart';
//import 'package:atm_consultoria/EntradaRadioButton.dart';
//import 'package:atm_consultoria/EntradaSwitch.dart';
//import 'package:atm_consultoria/EntradaSlider.dart';
import 'package:atm_consultoria/TelaPrincipal.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: EntradaDados(),
    //home: EntradaCheckbox(),
    //home: EntradaRadioButton(),
    //home: EntradaSwitch(),
    //home: EntradaSlider(),
    home: TelaPrincipal(),
  ));
}