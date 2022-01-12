import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações?"),
                value: _escolhaUsuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            SwitchListTile(
                title: Text("Carregar imagens automaticamente"),
                value: _escolhaConfig,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaConfig = valor;
                  });
                }
            ),
          RaisedButton(
            child: Text("Salvar",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

              onPressed: (){

              if(_escolhaUsuario){
                print ("Escolha: Ativar notificações");
              }else{    print ("Escolha: NÃO ativar notificações");}
              if(_escolhaConfig){
                print ("Escolha: Carregar imagens automaticamente");
              }else{
                print ("Escolha: NÃO carregar imagens automaticamente");
              }

              /*print("Resultado de Notificações: " + _escolhaUsuario.toString());
              print("Resultado da Configuração: " + _escolhaConfig.toString());*/
              }),

          /*  Switch(value: _escolhaUsuario,
                onChanged: (bool valor){
              setState(() {
                _escolhaUsuario = valor;
              });
                },
            ),
            Text("Receber notificações?")*/


          ],
        ),
      ),
    );
  }
}
