import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
  String choice = stdin.readLineSync()!.toLowerCase();

  passwordGenerator(choice);
}

void shuffleGenerator(int strength) {
  final random = Random();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  // print(intList);
  List charList = base64Encode(intList).split('').toList();
  charList.shuffle();
  print('Your password is: ${charList.join()}');
}

void passwordGenerator(String choice) {
  switch (choice) {
    case "weak":
      shuffleGenerator(5);
      break;
    case "medium":
      shuffleGenerator(10);
      break;
    case "strong":
      shuffleGenerator(15);
      break;
    default:
      print("Invalid choice");
  }
}
