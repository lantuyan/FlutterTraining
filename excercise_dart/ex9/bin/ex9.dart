import 'dart:io';
import 'dart:math';

void main() {
  guessingGame();
}

void guessingGame() {
  print('Guess Number Game');
  print('type "exit" for exit game');
  print('-----------------');
  print('Enter the max number rule: ');
  final maxNumber = int.parse(stdin.readLineSync()!);
  final answer = Random().nextInt(maxNumber) + 1;
  int temp = 0;
  while (true) {
    print('Enter your guess number (1-$maxNumber): ');
    var guessNumber = stdin.readLineSync()!;

    if (guessNumber.toLowerCase() == 'exit') {
      print('Good bye!');
      break;
    } else if (int.parse(guessNumber) > maxNumber) {
      print('THe number must be less than $max');
    }

    //Logic game
    temp++;
    if (int.parse(guessNumber) == answer) {
      print('You win!');
      print('You guessed $temp times');
      break;
    } else if (int.parse(guessNumber) > answer) {
      print('Too high!');
    } else {
      print('Too low!');
    }
  }
}
