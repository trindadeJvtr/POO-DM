import 'dart:io';

import 'PersonManager.dart';

void main() {
  PersonManager gerenciador = PersonManager();

  while (true) {
    print('Escolha uma opção:');
    print('1. Adicionar pessoa');
    print('2. Visualizar pessoas');
    print('3. Atualizar pessoa');
    print('4. Deletar pessoa');
    print('5. Sair');

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        gerenciador.addPerson();
        break;
      case '2':
        gerenciador.viewPersons();
        break;
      case '3':
        gerenciador.updatePerson();
        break;
      case '4':
        gerenciador.deletePerson();
        break;
      case '5':
        return;
      default:
        print('Opção inválida');
    }
  }
}