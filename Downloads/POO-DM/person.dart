
abstract class Person {
  String name;
  int age;
  double height;

  Person(this.name, this.age, this.height);

  @override
  String toString() {
    return 'Name: $name, Age: $age, Height: $height';
  }
}
