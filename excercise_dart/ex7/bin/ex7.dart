import 'dart:io';

void main() {
  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List b = [];

  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      b.add(a[i]);
    }
  }
  print(b);
}
