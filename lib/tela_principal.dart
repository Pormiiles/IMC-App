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

class GeneroCard extends StatelessWidget {
  GeneroCard(this.icon, this.generoUser);

  final IconData icon;
  final String generoUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 95.0,
        ),
        SizedBox(height: 15.0),
        Text(
          generoUser,
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ],
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
