import 'package:flutter/material.dart';
import 'package:imccalc_flutter/componentes/botao_inferior.dart';
import 'package:imccalc_flutter/componentes/cartao_padrao.dart';

class Resultados extends StatelessWidget {
  Resultados({required this.resultadoIMC, required this.resultadoTexto, required this.resultadoDetalhes});

  final String resultadoIMC;
  final String resultadoTexto;
  final String resultadoDetalhes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text("Resultado",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold, 
                fontSize: 40.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(Color(0xFF9E9E9E), 
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultadoTexto.toUpperCase(), 
                  style: TextStyle(
                    color: Color(0xFF24D876),
                    fontWeight: FontWeight.bold, 
                    fontSize: 22.0),
                  ),
                  Text(resultadoIMC, 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, 
                    fontSize: 100.0),
                  ),
                  Text(resultadoDetalhes, 
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 22.0),
                  textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BotaoInferior(
            aoPressionar: () {
              Navigator.pop(context);
            }, 
            tituloBotao: "RECALCULAR",
          ),
        ],
      ),
    );
  }
}