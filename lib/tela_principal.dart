import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalc_flutter/cartao_padrao.dart';
import 'package:imccalc_flutter/genero_card.dart';

const corAtivaBotao = Color(0xFF9E9E9E);
const corInativaBotao = Color(0xFF7E7E7E);

enum GeneroEnum {
  Masculino,
  Feminino
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Color corCartaoMasculino = corInativaBotao;
  Color corCartaoFeminino = corInativaBotao;
  int altura = 180;

  void atualizarCor(GeneroEnum generoUser) {
    corCartaoMasculino = generoUser == GeneroEnum.Masculino ? (corCartaoMasculino == corInativaBotao ? corAtivaBotao : corInativaBotao) : corInativaBotao; 

    corCartaoFeminino = generoUser == GeneroEnum.Feminino ? (corCartaoFeminino == corInativaBotao ? corAtivaBotao : corInativaBotao) : corInativaBotao;
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
                  child: CartaoPadrao(
                    corCartaoMasculino,
                    filhoCartao: GeneroCard(FontAwesomeIcons.mars, 'MASCULINO'),
                    aoPressionar: () {
                      setState(() {
                        atualizarCor(GeneroEnum.Masculino);
                      });
                    }
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    corCartaoFeminino,
                    filhoCartao: GeneroCard(FontAwesomeIcons.venus, 'FEMININO'),
                    aoPressionar: () {
                      setState(() {
                        atualizarCor(GeneroEnum.Feminino);
                      });
                    }
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
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ALTURA", 
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(altura.toString(), 
                              style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 40.0),
                            ),
                            Text("cm", 
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: Color(0xFFFF5822),
                          inactiveColor: Color(0xFF8D8E98),
                          value: altura.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double novoValor) {
                            setState(() {
                              altura = novoValor.round();
                            });
                          },
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