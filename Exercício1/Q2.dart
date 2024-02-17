import 'dart:io';

void main(){
  // Leitura do nome
  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;

  // Leitura do sobrenome
  print('Digite seu sobrenome:');
  String sobrenome = stdin.readLineSync()!;

  // Concatenação do nome completo
  String nomeCompleto = nome + ' ' + sobrenome;

  // Apresentação do nome completo
  print('Seu nome completo é: $nomeCompleto.');
}