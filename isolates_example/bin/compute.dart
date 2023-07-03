import 'dart:isolate';

void main() async {
  final data = {'data': 'here is some data.'};
  final computedData = await compute(heavyFunction, data);
}

// Top Level Function
dynamic heavyFunction(Map<String, dynamic> map) {
  final data = map['data'];

  // Heavy computing process
  final computedData = data;

  return computedData;
}
