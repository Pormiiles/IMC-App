import 'dart:math';

class Calculadora {
  Calculadora({required this.altura, required this.peso});

  final int altura;
  final int peso;
  double _imc = 0;

  String calcularIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if(_imc >= 25) {
      return "Acima do peso";
    } else if(_imc > 18.5) {
      return "Normal";
    } else {
      return "Abaixo do peso";
    }
  }

  String obterDetalhes() {
    if(_imc >= 25) {
      return "Você está acima do peso! Tente se exercitar mais.";
    } else if(_imc > 18.5) {
      return "Muito bem! Seu peso está normal.";
    } else {
      return "Você está abaixo do peso! Tente se alimentar mais.";
    }
  }
}