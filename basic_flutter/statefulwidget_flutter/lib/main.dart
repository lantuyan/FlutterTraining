import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('MyWidget custom statlesswidget'),
        ),
        body: Center(child: MyWidget2(false)),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

// Bước 1: Tạo một widget
class MyWidget2 extends StatefulWidget {
  final bool loading;
  MyWidget2(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

// BƯớc 2: Tạo một state
class MyWidget2State extends State<MyWidget2> {
  late bool _localLoading;
  @override
  void initState() {
    _localLoading = widget.loading;
  }

  // Create Build
  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator()
        : FloatingActionButton(onPressed: onClickButton);
  }

  // Create Function set state
  void onClickButton() {
    setState(() {
      _localLoading = true;
    });
  }
}
