import 'person.dart';

class Student extends Person {
  String course;

  Student(String name, int age, double height, this.course) : super(name, age, height);

  @override
  String toString() {
    return '${super.toString()}, Course: $course';
  }
}