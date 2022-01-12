import 'package:flutter/material.dart';
class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 5;
  String label = "Valor selecionado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
    child: Column(
      children: <Widget> [
        Slider(
          value: valor,
            min: 0,
            max: 5,
            label: label,
            divisions: 5,
            activeColor: Colors.red,
            onChanged: (double novoValor){
            setState(() {

              valor = novoValor;
              label = "Valor selecionado: " + novoValor.toString();

            });
           // print("Valor selecionado: " + novoValor.toString());
            },
        ),
        RaisedButton(
          child: Text("Salvar",
          style: TextStyle(
            fontSize: 20,
          ),
          ),
            onPressed:(){
              print("Valor selecionado: " + valor.toString());
            } ),

      ],
    ),
    ),
      );
  }
}
