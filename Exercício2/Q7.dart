import 'dart:io';

bool validarEmail(String email) {
  return email.contains('@uninassaustore.com.br');
}

void main() {
stdout.write("Digite seu email");
String email = stdin.readLineSync()!;

bool emailValido = validarEmail(email);

if (emailValido) {
  print("email válido");
} else {
  print("email inválido");
}
}