import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'SizedBox Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SizedBox Widget'),
        ),
        // Chilren body
        body: Column(
          children: [
            sizedboxWidget(),
            SizedBox(height: 50),
            sizedboxWidget2(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class sizedboxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      // width: double.infinity,
      // height: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: const Text(
          'SizedBox',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class sizedboxWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      // width: double.infinity,
      // height: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        child: const Text(
          'SizedBox',
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
