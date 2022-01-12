import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}
class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
centerTitle: true,
title: Text("Entrada de dados"),
),
body: Column(
crossAxisAlignment: CrossAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.center,

children: <Widget> [
Padding(
  padding:EdgeInsets.all(32),
child:  TextField(
textAlign: TextAlign.center,
//text, number, emailAddress, datetime
keyboardType: TextInputType.number,
decoration: InputDecoration(
  labelText: "Digite um valor"
),
//enabled: true,
//maxLength: 5,
  //maxLengthEnforced: true,
  style: TextStyle(
    fontSize: 25,
    color: Colors.green,
  ),
  obscureText: false,

  /* //CAPTURA A CADA INSERÇÃO O QUE FOI DIGITADO
  onChanged: (String texto){
  print("Valor digitado: " + texto);
   },*/
  onSubmitted: (String texto){},
  controller: _textEditingController,
),
),
  RaisedButton(
    child: Text("Salvar"),
    color: Colors.blue,
    onPressed: (){
print("Valor digitado: "+ _textEditingController.text);
    },
  )
],
),
);
  }
}
