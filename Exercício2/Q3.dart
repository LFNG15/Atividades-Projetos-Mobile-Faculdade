import 'dart:io';

void main() {
  List<String> perguntas = [
    "Telefonou para a vítima?",
    "Esteve no local do crime?",
    "Mora perto da vítima?",
    "Tinha dívidas com a vítima?",
    "Já trabalhou com a vítima?"
  ];

  int respostasPositivas = 0;

  for (int i = 1; i < perguntas.length; i++) {
    stdout.write("${perguntas[i]} ");
    String resposta = stdin.readLineSync()!.toLowerCase();
    if (resposta == 'sim' || resposta == 's') {
      respostasPositivas++;
    }
  }

  if (respostasPositivas == 2){
    print("Suspeita");
  } else if (respostasPositivas >=3 && respostasPositivas <=4) {
    print("Cúmplice");
  } else if (respostasPositivas == 5) {
    print("Assassino");
  } else {
    print("Inocente");
  }
}