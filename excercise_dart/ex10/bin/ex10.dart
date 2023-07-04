import 'dart:io';

void main() {
  stdout.write("Enter your number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (checkPrime(number)) {
    print("$number is a prime number");
  } else {
    print("$number is not a prime number");
  }
}

bool checkPrime(int number) {
  int i = 2;
  bool isPrime = true;
  while (i < number) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
    i++;
  }
  return isPrime;
}
