import 'dart:io';

void main() {
  stdout.writeln('What number do you want to check?');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print('Even NUmber');
  } else {
    print('Odd Number');
  }
}
