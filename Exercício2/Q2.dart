import 'dart:io';

void main(){
  print("Digite o resultado das últimas 10 partidas (V para Vitória, E para Empate, D para Derrota):");
  List<String> resultados = [];
  for (int i = 0; i < 10; i++) {
    stdout.write("Partida ${i + 1}: ");
    String resultado = stdin.readLineSync()!.toUpperCase();
    resultados.add(resultado);
  }

  int pontuacaoTotal = 0;
  for (String resultado in resultados) {
    switch (resultado) {
      case 'V':
        pontuacaoTotal += 10;
        break;
      case 'E':
        pontuacaoTotal += 5;
        break;
      case 'D':
        pontuacaoTotal -= 2;
        break;
      default:
        print("Resultado inválido!");
        return;
    }
  }

  if (pontuacaoTotal >= 60) {
    print("Você subiu de patente!");
  } else if (pontuacaoTotal >= 21 && pontuacaoTotal <= 59) {
    print("Você permaneceu na patente atual.");
  } else {
    print("Você foi rebaixado de patente.");
  }
}
