import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(
    MaterialApp(
      title: 'Button Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
      Scaffold(
        appBar: AppBar(
          title: const Text('Button Widget'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buttonWidget(),
              buttonIconWidget(),
              buttonDisableWidget(),
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
          
          minimumSize: const Size(200,90),
          // padding: const EdgeInsets.all(25.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
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
          
          minimumSize: const Size(200,90),
          // padding: const EdgeInsets.all(25.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
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
          style: TextStyle(fontSize: 20,),
          
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
          
          minimumSize: const Size(200,90),
          // padding: const EdgeInsets.all(25.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          elevation: 20.0,
          shadowColor: Colors.red.withOpacity(0.5),
          side: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          

        ),
        icon: const Icon(Icons.add, size: 30),
        label: const Text(
          'Text Button',
          style: TextStyle(fontSize: 20),
          
        ),
      ),
    );
  }
}