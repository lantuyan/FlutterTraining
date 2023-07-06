import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('MyWidget custom statlesswidget'),
        ),
        body: Center(child: MyWidget(true)),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  final bool loading;
  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    // if (loading) {
    //   return const CircularProgressIndicator();
    // } else {
    //   return const Text('State!');
    // }
    return loading ? const CircularProgressIndicator() : const Text('State!');
  }
}
