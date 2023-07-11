import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Stack Widget'),
          ),
          body: stackWidget(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

//Stack widget
class stackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 500,
      height: 500,
      child: Stack(
        // alignment: Alignment.center,
        fit: StackFit.loose,
        alignment: Alignment.center,
        // textDirection: TextDirection.rtl,
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.yellow,
            width: 300,
            height: 300,
          ),
          Positioned(
            left: 50,
            top: 10,
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 600,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Container(
            color: Colors.black,
            width: 70,
            height: 70,
          ),
          Container(
            color: Colors.white,
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}
