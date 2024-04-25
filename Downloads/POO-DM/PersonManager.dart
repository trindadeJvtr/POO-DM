import 'dart:io';

import 'person.dart';
import 'student.dart';
import 'teacher.dart';

class PersonManager {
  List<Person> pessoas = [];

  void addPerson() {
    print('Digite o tipo de pessoa (aluno/professor):');
    String tipo = stdin.readLineSync()!.toLowerCase();
    
    print('Digite o nome da pessoa:');
    String nome = stdin.readLineSync()!;
    print('Digite a idade da pessoa:');
    int idade = int.parse(stdin.readLineSync()!);
    print('Digite a altura da pessoa:');
    double altura = double.parse(stdin.readLineSync()!);

    if (tipo == 'aluno') {
      print('Digite o curso do aluno:');
      String curso = stdin.readLineSync()!;
      pessoas.add(Student(nome, idade, altura, curso));
    } else if (tipo == 'professor') {
      print('Digite a disciplina do professor:');
      String disciplina = stdin.readLineSync()!;
      pessoas.add(Teacher(nome, idade, altura, disciplina));
    } else {
      print('Tipo de pessoa inválido');
      return;
    }
    print('Pessoa adicionada com sucesso!');
  }

  void viewPersons() {
    if (pessoas.isEmpty) {
      print('Nenhuma pessoa cadastrada.');
    } else {
      print('Lista de pessoas:');
      for (int indice = 0; indice < pessoas.length; indice++) {
        Person pessoa = pessoas[indice];
        String tipo = pessoa is Student ? 'Aluno' : 'Professor';
        print('Número: $indice, Tipo: $tipo, Pessoa: $pessoa');
      }
    }
  }

  void updatePerson() {
    viewPersons();
    if (pessoas.isEmpty) return;

    print('Digite o número da pessoa que deseja atualizar:');
    int indice = int.parse(stdin.readLineSync()!);

    if (indice < 0 || indice >= pessoas.length) {
      print('Número inválido');
      return;
    }

    Person pessoa = pessoas[indice];
    if (pessoa is Student) {
      print('Digite o novo nome:');
      pessoa.name = stdin.readLineSync()!;
      print('Digite a nova idade:');
      pessoa.age = int.parse(stdin.readLineSync()!);
      print('Digite a nova altura:');
      pessoa.height = double.parse(stdin.readLineSync()!);
      print('Digite o novo curso:');
      pessoa.course = stdin.readLineSync()!;
    } else if (pessoa is Teacher) {
      print('Digite o novo nome:');
      pessoa.name = stdin.readLineSync()!;
      print('Digite a nova idade:');
      pessoa.age = int.parse(stdin.readLineSync()!);
      print('Digite a nova altura:');
      pessoa.height = double.parse(stdin.readLineSync()!);
      print('Digite a nova disciplina:');
      pessoa.discipline = stdin.readLineSync()!;
    }
    print('Pessoa atualizada com sucesso!');
  }

  void deletePerson() {
    viewPersons();
    if (pessoas.isEmpty) return;

    print('Digite o número da pessoa que deseja deletar:');
    int indice = int.parse(stdin.readLineSync()!);

    if (indice < 0 || indice >= pessoas.length) {
      print('Número inválido');
      return;
    }

    pessoas.removeAt(indice);
    print('Pessoa deletada com sucesso!');
  }
}
