
import 'package:test/test.dart';

void main() {
  
  // 1. Variables
  String name = 'Lantuyan';
  String address = 'DaNang';
  num age = 20;
  num height = 1.7;
  bool isMarried = false;

  print('Name: ' + name);
  print('Address:'+ address);
  print('Age is ${age} years old');
  print('Height is ${height}');
  print('Married is ${isMarried}');

  // 2. const vs final
  const bar = 100000;
  const double atm = 1.012* bar;
  print('Atm is ${atm}');

  var foo = const [];
  foo = [1, 2, 3, 4, 5];
  print(foo);

  const foo2 = [1,2,3];
  // foo2[0] = 2; //error 
  print(foo2);

  final foo3 =  [1, 2, 3, 4, 5];
  foo3[0] = 3;
    print(foo3);

  const Object i = 3; 
  const list = [i as int];
  const map = {if (i is int) i: 'int'};
  const set = {if (list is List<int>)...list};
  print(set);
  print(map);
  print(list);

  // 3. Null safety
  String? nullableString = null;
  String nonNullableString = 'Hello, World!';
  late String lateString;
  print(nullableString);
  print('Example of Null safety');

  // Example 1:define List of nullable items
  List <int?> items = [1,2, null, 3];
  print('Example 1: ${items}');

  // Example 2: Define Function With Nullable Parameter
  void printAddress(String? address) {
    print('example 2:');
    print(address);
  }
  printAddress(null);

  // Example 3: Define Null To Class Property
  Person person = Person(null);

  // 4. Default value
  print('Default value');
  int? lintCount;
  assert(lintCount == null);

  // 5. Late keyword 
  print('Late keyword');
  late String lateString2;
  // assigning value to late variable
  lateString2 = 'Hello, World!';
  print(lateString2);

  
}

class Person {
 String? name;
 Person(this.name);
}