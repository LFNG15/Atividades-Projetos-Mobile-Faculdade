import 'dart:io';

void main() {
  List<String> produtos = [];

  while (true) {
    print('\nMenu:');
    print('1. Cadastrar produtos');
    print('2. Atualizar produto');
    print('3. Listar produtos');
    print('4. Deletar produto');
    print('5. Encerrar programa');

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        cadastrarProdutos(produtos);
        break;
      case '2':
        atualizarProduto(produtos);
        break;
      case '3':
        listarProdutos(produtos);
        break;
      case '4':
        deletarProduto(produtos);
        break;
      case '5':
        print('Encerrando o programa...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}

void cadastrarProdutos(List<String> produtos) {
  String continuar = 's';
  while (continuar.toLowerCase() == 's') {
    stdout.write('Digite o nome do produto: ');
    String? produto = stdin.readLineSync();
    if (produto != null && produto.isNotEmpty) {
      if (!produtos.contains(produto)) {
        produtos.add(produto);
        print('Produto cadastrado com sucesso!');
      } else {
        print('Produto já cadastrado.');
      }
    }
    stdout.write('Deseja cadastrar mais produtos? (s/n): ');
    continuar = stdin.readLineSync() ?? '';
  }
}

void atualizarProduto(List<String> produtos) {
  stdout.write('Digite o nome do produto que deseja atualizar: ');
  String? produtoAntigo = stdin.readLineSync();
  if (produtoAntigo != null && produtos.contains(produtoAntigo)) {
    int index = produtos.indexOf(produtoAntigo);
    stdout.write('Digite o novo nome do produto: ');
    String? novoProduto = stdin.readLineSync();
    if (novoProduto != null && novoProduto.isNotEmpty) {
      produtos[index] = novoProduto;
      print('Produto atualizado com sucesso!');
    }
  } else {
    print('Produto não encontrado.');
  }
}

void listarProdutos(List<String> produtos) {
  print('Lista de produtos cadastrados:');
  for (String produto in produtos) {
    print(produto);
  }
  print('Total de produtos cadastrados: ${produtos.length}');
}

void deletarProduto(List<String> produtos) {
  stdout.write('Digite o nome do produto que deseja deletar: ');
  String? produtoDeletar = stdin.readLineSync();
  if (produtoDeletar != null && produtos.contains(produtoDeletar)) {
    produtos.remove(produtoDeletar);
    print('Produto deletado com sucesso!');
  } else {
    print('Produto não encontrado.');
  }
}
