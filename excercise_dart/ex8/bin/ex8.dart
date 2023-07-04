import 'dart:io';
import 'dart:math';

void main() {
  print('Rock-Paper-Scissors Game');

  while (true) {
    List<String> options = ["rock", "paper", "scissors"];

    stdout.write('Enter your choice (rock =1 , paper =2 , scissors =3 ): ');
    int choice = int.parse(stdin.readLineSync()!);
    var random = Random();
    int computerChoice = random.nextInt(3) + 1;

    print('You chose: ${options[choice - 1]}');
    print('Computer chose: ${options[computerChoice - 1]}');

    if (choice == computerChoice) {
      print('Draw');
    } else if (choice == 1 && computerChoice == 3) {
      print('You win');
    } else if (choice == 2 && computerChoice == 1) {
      print('You win');
    } else if (choice == 3 && computerChoice == 2) {
      print('You win');
    } else {
      print('You lose');
    }
  }
}
