import 'dart:io';

void main() {
  stdout.write('Enter A String: ');
  String str = stdin.readLineSync()!;
  print('You Entered: $str is');

  String revInput = str.split('').reversed.join();
  if (str == revInput) {
    print('Palindrome');
  } else {
    print('Not Palindrome');
  }
}
