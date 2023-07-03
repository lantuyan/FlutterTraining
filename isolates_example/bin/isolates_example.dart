import 'dart:isolate';

void sayhi(var message) {
  print('executed from sayhi function .. the message is $message');
}

void main() {
  Isolate.spawn(sayhi, 'Hello');
  Isolate.spawn(sayhi, 'Greetings');
  Isolate.spawn(sayhi, 'Welcome');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
