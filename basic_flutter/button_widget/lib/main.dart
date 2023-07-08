import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'Button Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buttonWidget(),
            buttonIconWidget(),
            buttonDisableWidget(),
            elevatedButtonWidget(),
            outlinedButtonWidget(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class buttonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: TextButton(
        onPressed: () {
          print('Pressed');
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.yellowAccent,
          backgroundColor: Colors.blue,

          minimumSize: const Size(200, 90),
          // padding: const EdgeInsets.all(25.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 20.0,
          shadowColor: Colors.red.withOpacity(0.5),
          side: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: const Text(
          'Text Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class buttonDisableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          // foregroundColor: Colors.yellowAccent,
          // backgroundColor: Colors.blue,

          minimumSize: const Size(200, 90),
          // padding: const EdgeInsets.all(25.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 20.0,
          shadowColor: Colors.red.withOpacity(0.5),
          side: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: const Color(0xff000000),
        ),
        child: const Text(
          'Text Button',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class buttonIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: TextButton.icon(
        onPressed: () {
          print('Pressed');
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.yellowAccent,
          backgroundColor: Colors.blue,

          minimumSize: const Size(200, 90),
          // padding: const EdgeInsets.all(25.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 20.0,
          shadowColor: Colors.red.withOpacity(0.5),
          side: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        icon: const Icon(Icons.add, size: 30),
        label: const Text(
          'Icon Button',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class elevatedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: ElevatedButton.icon(
        onPressed: () {
          print('Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          // minimumSize: const Size(240,80),
          padding: const EdgeInsets.all(25.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 20.0,
          shadowColor: const Color.fromARGB(255, 22, 56, 129).withOpacity(0.5),
          side: const BorderSide(
            color: Color.fromARGB(255, 1, 4, 18),
            width: 2.0,
          ),
        ),
        icon: const Icon(Icons.edit, size: 30),
        label: const Text(
          'Elevated Button',
          style: TextStyle(
            fontSize: 20,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class outlinedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: OutlinedButton(
        onPressed: () {
          print('Pressed');
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          // minimumSize: const Size(240,80),
          padding: const EdgeInsets.all(25.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 20.0,
          shadowColor: const Color.fromARGB(255, 22, 56, 129).withOpacity(0.5),
          side: const BorderSide(
            color: Color.fromARGB(255, 1, 4, 18),
            width: 2.0,
          ),
        ),
        child: const Text(
          'Outlined Button',
          style: TextStyle(
            fontSize: 20,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
