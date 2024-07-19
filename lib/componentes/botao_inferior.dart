import 'package:flutter/material.dart';

class BotaoInferior extends StatelessWidget {

  BotaoInferior({required this.aoPressionar, required this.tituloBotao});

  final VoidCallback aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: Center(
          child: Text(tituloBotao,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold, 
          fontSize: 20.0),
          ),
        ),
        color: Colors.deepOrange[800],
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}