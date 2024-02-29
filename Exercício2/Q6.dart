import 'dart:io';

double milhasparaquilometro(milhas) {
  const fatorConversao = 1.6;
  return milhas * fatorConversao;
}

void main() {
  stdout.write("Digite a distância em milhas: ");
  double milhas = double.parse(stdin.readLineSync()!);

  double quilometros = milhasparaquilometro(milhas);
  print("$milhas milhas é igual a $quilometros quilômetros. ");
}