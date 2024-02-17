import 'dart:io';

void main(){
 // Leitura da quantidade de cigarros fumados por dia
  print('Digite quantos cigarros você fuma por dia:');
  int cigarrosDia = int.parse(stdin.readLineSync()!);

  // Leitura da quantidade de anos que a pessoa já fuma
  print('Digite há quantos anos você fuma:');
  int anosFumando = int.parse(stdin.readLineSync()!);

  // Cálculo do total de cigarros fumados
  int totalCigarros = cigarrosDia * anosFumando * 365;

  // Cálculo da perda de tempo de vida em minutos
  int perdaTempoMinutos = totalCigarros * 10;

  // Cálculo da perda de tempo de vida em dias
  double perdaTempoDias = perdaTempoMinutos / (24 * 60);

  // Apresentação do resultado
  print('Você perdeu aproximadamente $perdaTempoDias dias de vida devido ao fumo.');
}