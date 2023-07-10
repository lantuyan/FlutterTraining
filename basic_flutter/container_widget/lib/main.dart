import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'Container Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: containerWidget(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class containerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 300,
      height: 300,
      alignment: Alignment.center,
      // alignment: const FractionalOffset(0.5, 0.8),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(30),
      transform: Matrix4.rotationZ(0.1),
      // color: Colors.red, //remove because of decoration color
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: const Text('Container Widget'),
    );
  }
}
