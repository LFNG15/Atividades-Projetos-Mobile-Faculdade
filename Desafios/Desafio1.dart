import 'dart:math';

//Classe - São Estrutura que definem comportamento(Métodos) e características(Atributos) de objeto
class Pessoa {
  //Atributos - São variáveis
  String? genero; //Objeto
  double? peso; //Objeto
  double? altura; //Objeto

  //Objeto é definição do dado fornecido aos atributos

  Pessoa(String genero, {double? peso, double? altura}) {
    this.peso = peso;
    this.genero = genero;
    this.altura = altura;
  }
  //Métodos - São funções que definem comportamento dos objeto nessa classe
  double calcularIMC() {
    double? valorIMC = peso! / pow(altura!, 2);
    return valorIMC;
  }

  double pesoIdeal(double altura, String genero) {
    double valorpesoIdeal;
    if (genero == "masculino") {
      valorpesoIdeal = altura - 100 - (altura - 150) / 4;
    } else {
      valorpesoIdeal = altura - 100 - (altura - 150) / 2.5;
    }

    return valorpesoIdeal;
  }
}

void main() {
 Pessoa pessoa = Pessoa.new("masculino", peso: 78, altura: 1.7);

  double? imcCalculado = pessoa.calcularIMC();
  print(imcCalculado);

  double? pesoHomem = pessoa.pesoIdeal(170, "masculino");
  print("O peso ideal dele é:" + pesoHomem.toString());

  double? pesoMulher = pessoa.pesoIdeal(170, "feminino");
  print("O peso ideal dela é:" + pesoMulher.toString());
}
