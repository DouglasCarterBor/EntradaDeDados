
import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaCheckBox.dart';
import 'package:entrada_dados/EntradaRadioButton.dart';
import 'package:entrada_dados/EntradaSlider.dart';
import 'package:entrada_dados/EntradaSwicth.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CampoTexto(),
      //home: EntradaCheckbox,
      //home: EntradaRadioButton(),
       //home: EntradaSwitch(),
      //home: EntradaSlider(),
    ),
  );
}