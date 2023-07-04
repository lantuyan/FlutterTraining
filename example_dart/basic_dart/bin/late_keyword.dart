class Person {
  final int age;
  final String name;
  late String description = heavyComputation();

  Person(this.age, this.name) {
    print('constructor is called');
  }

  String heavyComputation() {
    print('heavy computation is called');
    return "heavy computation";
  }
}
void main() {
  Person person = Person(10,'Lantuyan');
  print(person.age);
  print(person.description);
}
