import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc_flutter/cartao_padrao.dart';
import 'package:imccalc_flutter/genero_card.dart';

const corAtivaBotao = Color(0xFF9E9E9E);
const corInativaBotao = Color(0xFF7E7E7E);

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Color corCartaoMasculino = corInativaBotao;
  Color corCartaoFeminino = corInativaBotao;

  void atualizarCor(int generoUser) {
    if(generoUser == 1) {
      if(corCartaoMasculino == corInativaBotao) {
        corCartaoMasculino = corAtivaBotao;
        corCartaoFeminino = corInativaBotao;
      } else {
        corCartaoMasculino = corInativaBotao;
      }
    } 
    
    if(generoUser == 2) {
      if(corCartaoFeminino == corInativaBotao) {
        corCartaoFeminino = corAtivaBotao;
        corCartaoMasculino = corInativaBotao;
      } else {
        corCartaoFeminino = corInativaBotao;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        atualizarCor(1);
                      });
                    },
                    child: CartaoPadrao(
                      corCartaoMasculino,
                      filhoCartao: GeneroCard(FontAwesomeIcons.mars, 'MASCULINO'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        atualizarCor(2);
                      });
                    },
                    child: CartaoPadrao(
                      corCartaoFeminino,
                      filhoCartao: GeneroCard(FontAwesomeIcons.venus, 'FEMININO'),
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
                    corAtivaBotao,
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
                    corAtivaBotao,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    corAtivaBotao,
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