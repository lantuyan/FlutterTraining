import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'Expanded Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Widget'),
        ),
        body: 
        expandedWidget(),
        // expandedWidget2(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class expandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            )
          ),
          const SizedBox(width:30),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
            )
          ),
           const SizedBox(width:30),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            )
          ),
        ],
      ),
    );
  }
}

class expandedWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            )
          ),
          const SizedBox(height:30),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
            )
          ),
           const SizedBox(height:30),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            )
          ),
        ],
      ),
    );
  }
}
