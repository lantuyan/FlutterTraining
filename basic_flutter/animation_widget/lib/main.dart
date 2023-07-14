import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // body: MyHomePage(),
        body: MyHomePage2(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _height = 100;
  double _width = 100;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _height = _height == 100 ? 200 : 100;
                  _width = _width == 100 ? 200 : 100;
                  _color = _color == Colors.red ? Colors.blue : Colors.red;
                });
              },
              child: const Text("Click Me")),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            color: _color,
            height: _height,
            width: _width,
          ),
        ],
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  double _height = 400;
  double _width = 400;
  Color _color = Colors.yellowAccent;

  double _top = 0;
  double _left = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Container(
          height: _height,
          width: _width,
          color: _color,
          child: Stack(
            children: [
              AnimatedPositioned(
                top: _top,
                left: _left,
                height: 100,
                width: 100,
                duration: const Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _top = 0;
                });
              },
              child: const Text("UP"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _top = _width - 100;
                });
              },
              child: const Text("DOWN"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _left = 0;
                });
              },
              child: const Text("LEFT"),
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
                  _left = _height - 100;
               });
              },
              child: const Text("RIGHT"),
            ),
            
          ],
        )
      ],
    );
  }
}
