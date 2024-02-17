import 'dart:io';

void main() {
  // Leitura do número inteiro
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);

  // Cálculo do quadrado do número
  int quadrado = numero * numero;

  // Apresentação do resultado
  print('O quadrado de $numero é $quadrado.');
}