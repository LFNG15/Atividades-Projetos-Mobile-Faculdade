import 'dart:io';

void valor(num num1, num num2) {
  if (num1 < num2) {
    print('O menor valor é:, $num1');
  } else if (num1 > num2) {
    print('O menor valor é:, $num2');
  } else {
    print('Os valores são iguais');
  }
}

void main() {
  print('Digite o primeir valor');
  var input1 = stdin.readLineSync(); //Não esquecer do stdin.readLineSync e double.parse(objeto!) nos próximos exercícios
  var num1 = double.parse(input1!); //Não esquecer do stdin.readLineSync e double.parse(objeto!) nos próximos exercícios

  print('Digite o segundo valor');
  var input2 = stdin.readLineSync();
  var num2 = double.parse(input2!);

  valor(num1, num2);
}
