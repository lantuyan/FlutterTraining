import 'dart:io';
import 'dart:math';

void main() {
  //Genereate digit number: 1000-9999
  final random = Random();
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();

  int attempts = 0;
  while (true) {
    int cows = 0;
    int bulls = 0;
    attempts += 1;

    print('Guess the number: ');
    String guessNumber = stdin.readLineSync()!;

    if (guessNumber.length != 4) {
      print('Please enter a 4 digit number');
      continue;
    } else if (guessNumber == randomNumber) {
      print('You guessed the number in $attempts attempts');
      break;
    } else if (guessNumber == 'exit') {
      print('The number was $randomNumber');
      print('Exiting the game. Bye!');
    }

    for (int i = 0; i < guessNumber.length; i++) {
      if (guessNumber[i] == randomNumber[i])
        cows += 1;
      else if (randomNumber.contains(guessNumber[i])) bulls += 1;
    }
    print('$cows cows, $bulls bulls');
  }
}
