import 'dart:io';

void main() {
  List<double> temperaturas = [];
  double soma = 0.0;

  for (int i = 1; i <= 12; i++) {
    stdout.write("Digite a temperatura média do mês $i: ");
    double temperatura = double.parse(stdin.readLineSync()!);
    temperaturas.add(temperatura);
    soma += temperatura;
  }

  double mediaAnual = soma / 12;

  print ("\nMédia anual das temperaturas: $mediaAnual");

  print("\nTemperaturas acima da média anual:");
  for (int i = 0; i < temperaturas.length; i++) {
    if (temperaturas[i] > mediaAnual) {
      String mes = obterNomeDoMes(i + 1);
      print("$mes: ${temperaturas[i]}");
    }
  }
}

String obterNomeDoMes(int numeroMes) {
  switch (numeroMes) {
    case 1:
      return "Janeiro";
    case 2:
       return "Fevereiro";
    case 3:
      return "Março";
    case 4:
      return "Abril";
    case 5:
      return "Maio";
    case 6:
      return "Junho";
    case 7:
      return "Julho";
    case 8:
      return "Agosto";
    case 9:
      return "Setembro";
    case 10:
      return "Outubro";
    case 11:
      return "Novembro";
    case 12:
      return "Dezembro";
    default:
      return "Mês inválido";      
  }
}