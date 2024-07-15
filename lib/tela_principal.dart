import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: 
                CartaoPadrao(Color(0xFF9E9E9E)),
              ),
              Expanded(child: 
                CartaoPadrao(Color(0xFF9E9E9E)),
              )
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child:
                CartaoPadrao(Color(0xFF9E9E9E)),
              )
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child:
                CartaoPadrao(Color(0xFF9E9E9E)),
              ),
              Expanded(child:
                CartaoPadrao(Color(0xFF9E9E9E)),
              )
            ],
          )),
        ],
      )
    );
  }
}

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao(this.cor);

  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}