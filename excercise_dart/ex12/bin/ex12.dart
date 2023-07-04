import 'dart:io';

void main() {
  stdout.write("How many numbers Fibonnaci want to genereate: ");
  int number = int.parse(stdin.readLineSync()!);
  print('Fibonnaci numbers: ${fibonnaciNumber(number)}');
}

List fibonnaciNumber(int number) {
  List fiboList = [1, 1];
  for (int i = 0; i < number; i++) {
    fiboList.add(fiboList[i] + fiboList[i + 1]);
  }
  return fiboList;
}
