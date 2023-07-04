import 'dart:io';

void main(List<String> arguments) {
  stdout.writeln('What your name?');
  String name = stdin.readLineSync()!;
  print('Hello $name');
  stdout.writeln('How old are you?');
  int age = int.parse(stdin.readLineSync()!);

  int HundredAge = 100 - age;
  print('You will be 100 years old in $HundredAge years');
}
