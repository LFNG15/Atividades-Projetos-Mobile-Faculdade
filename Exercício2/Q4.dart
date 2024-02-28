import 'dart:io';

void main() {
  List<double> notas = [];
  double soma = 0.0;

  while (true) {
    stdout.write("Digite uma nota até quando você desejar e em seguida digite o número negativo para fechar e obter resultado:");
    double nota = double.parse(stdin.readLineSync()!);

    if (nota < 0){
      break;
    }

    notas.add(nota);
    soma += nota;
  }

  print("\nQuantidade de notas lidas: ${notas.length}");

  print("Notas na ordem informada: $notas");

  print("Notas na ordem inversa: ${notas.reversed.toList()}");

  print("Soma das notas: $soma");

  double media = notas.isEmpty ? 0.0 : soma / notas.length;
  print("Média das notas: $media");

  List<double> notasAcimaMedia = notas.where((nota) => nota > media).toList();
  print("Notas acima da média: $notasAcimaMedia");
}