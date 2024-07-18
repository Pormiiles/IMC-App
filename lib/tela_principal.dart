import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc_flutter/cartao_padrao.dart';
import 'package:imccalc_flutter/genero_card.dart';

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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                    filhoCartao: GeneroCard(FontAwesomeIcons.mars, 'MASCULINO'),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                    filhoCartao: GeneroCard(FontAwesomeIcons.venus, 'FEMININO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}