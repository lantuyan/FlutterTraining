import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'Flexible Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flexible Widget'),
        ),
        body: 
        flexibleWidget(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class flexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            // fit: FlexFit.loose,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 20,
            )
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
              height: 100,
            )
          ),

          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
            )
          ),
        ],
      ),
    );
  }
}
