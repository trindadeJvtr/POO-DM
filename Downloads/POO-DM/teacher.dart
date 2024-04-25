import 'person.dart';

class Teacher extends Person {
  String discipline;

  Teacher(String name, int age, double height, this.discipline) : super(name, age, height);

  @override
  String toString() {
    return '${super.toString()}, Discipline: $discipline';
  }
}