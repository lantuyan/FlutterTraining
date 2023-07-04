import 'dart:math';

void main() {
  List list = List.generate(20, (_) => Random().nextInt(10));
  print('List: $list');
  print('List have ${list.length - list.toSet().length} duplicate');
  print('List without duplicate: ${removeDuplicate(list)}');
}

List removeDuplicate(List list) {
  List newList = [];
  for (var i in list) {
    if (!newList.contains(i)) newList.add(i);
  }
  return newList;
}
