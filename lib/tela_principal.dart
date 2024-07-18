import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 95.0,
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'MASCULINO',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    Color(0xFF9E9E9E),
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 95.0,
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'FEMININO',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
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

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao(this.cor, {this.filhoCartao});

  final Color cor;
  final Widget? filhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: filhoCartao,
    );
  }
}
