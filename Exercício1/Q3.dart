import 'dart:io';

void main(){
  // Leitura da quantidade de dias
  print('Digite a quantidade de dias que o carro foi alugado:');
  int dias = int.parse(stdin.readLineSync()!);

  // Leitura da quantidade de km rodados
  print('Digite a quantidade de km percorridos:');
  double kmRodados = double.parse(stdin.readLineSync()!);

  // Cálculo do valor da diária
  double valorDiaria = dias * 60.00;

  // Cálculo do valor dos km rodados
  double valorKmRodados = kmRodados * 1.15;

  // Cálculo do valor total
  double valorTotal = valorDiaria + valorKmRodados;

  // Apresentação do valor total
  print('O valor total a pagar é: R\$ $valorTotal.');
}