import 'dart:math';

void main() {
  final random = Random();
  List<int> a = List.generate(10, (_) => random.nextInt(100));
  print(a);
  print(newList(a));
}

List<int> newList(List<int> a) {
  return [a.first, a.last];
}
  // FirstAndLast(a, b);
  // print(b);
// void FirstAndLast(List a, List b) {
//   b.add(a[0]);
//   b.add(a[a.length - 1]);
// }
