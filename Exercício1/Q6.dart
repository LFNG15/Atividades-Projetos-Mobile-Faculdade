
void main(){
  // Altura inicial de Chico e Juca
  double alturaChico = 1.50;
  double alturaJuca = 1.10;

  // Crescimento anual de Chico e Juca
  double crescimentoChico = 0.02;
  double crescimentoJuca = 0.05;

  // Contador de anos
  int anos = 0;

  // Loop para verificar a altura a cada ano
  while (alturaJuca <= alturaChico) {
    // Aumento da altura de Chico e Juca a cada ano
    alturaChico += crescimentoChico;
    alturaJuca += crescimentoJuca;

    // Incrementar o contador de anos
    anos++;
  }

  // Apresentação do resultado
  print('Juca será maior que Chico em $anos anos.');
}