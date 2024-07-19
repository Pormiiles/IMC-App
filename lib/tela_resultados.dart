import 'package:flutter/material.dart';
import 'package:imccalc_flutter/cartao_padrao.dart';
import 'package:imccalc_flutter/tela_principal.dart';

class Resultados extends StatelessWidget {
  const Resultados({Key? key}) : super(key: key);

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
                  Text("NORMAL", 
                  style: TextStyle(
                    color: Color(0xFF24D876),
                    fontWeight: FontWeight.bold, 
                    fontSize: 22.0),
                  ),
                  Text("18.4", 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, 
                    fontSize: 100.0),
                  ),
                  Text("O seu IMC está baixo! Você precisa comer mais.", 
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