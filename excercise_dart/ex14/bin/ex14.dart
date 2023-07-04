import 'dart:io';

void main() {
  stdout.write("Enter String : ");
  String str = stdin.readLineSync()!;
  print("String : $str");
  print("Backward String : ${backwardString(str)}");
}

String backwardString(String str) {
  return str.split(' ').reversed.join(' ');
}
