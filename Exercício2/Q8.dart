import 'dart:io';

String formatarData(String data) {
  List<String> partes = data.split('/');

  if (partes.length !=3) {
    return "Formato de data inválido";
  }

  int dia = int.parse(partes[0]);
  int mes = int.parse(partes[1]);
  int ano = int.parse(partes[2]);

  if (dia < 1 || dia > 31 || mes < 1 || mes > 12) {
    return "Data inválida";
  }

  List<String> meses = [
    "janeiro", "fevereiro", "março", "abril", "maio", "junho",
    "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"
  ];

  String mesExtenso = meses[mes - 1];

  return "$dia de $mesExtenso de $ano";
}

void main() {
  stdout.write("Digite a data no formato DD/MM/AAAA: ");
  String input = stdin.readLineSync()!;

  String resultado = formatarData(input);
  print(resultado);
}