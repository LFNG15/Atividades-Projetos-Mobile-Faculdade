import 'dart:io';

void main(){
  // Leitura do valor do imóvel
  print('Digite o valor do imóvel:');
  double valorImovel = double.parse(stdin.readLineSync()!);

  // Leitura do salário
  print('Digite o seu salário:');
  double salario = double.parse(stdin.readLineSync()!);

  // Leitura da quantidade de meses para pagar
  print('Digite a quantidade de meses para pagar:');
  int mesesPagar = int.parse(stdin.readLineSync()!);

  // Cálculo do valor da parcela
  double valorParcela = valorImovel / mesesPagar;

  // Verificação se a parcela é maior que 30% do salário
  if (valorParcela > (salario * 0.3)) {
    print('Financiamento reprovado! A parcela excede 30% do seu salário.');
  } else {
    print('Financiamento aprovado! A parcela é de R\$ $valorParcela.');
  }
}