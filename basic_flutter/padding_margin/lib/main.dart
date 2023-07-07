import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Padding vs Margin'),
          ),
          body: MyWidget(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.blue,
      margin: EdgeInsets.all(30.0),
      child: Padding(
        // padding: EdgeInsets.all(8.0),
        // padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
        // padding: EdgeInsets.only(left: 15.0, right: 15.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Text(
          'Card Widget!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
