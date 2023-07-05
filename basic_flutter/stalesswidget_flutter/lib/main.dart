import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('SafeArea Demo'),
        ),
        body: const Center(
          child: Text('Lân tuyan!'),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
