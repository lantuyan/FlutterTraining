import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              myWidget(),
              SizedBox(height: 20),
              myWidget2(),
            ],
          ),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
    ),
    
  );
}

class myWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
            'Hello World! '
            'A run of text with a single style.'
            'The Text widget displays a string of '
            'text with single style. The string might'
            'break across multiple lines or might all '
            'be displayed on the same line depending onn'
            'the layout constraints.',
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            maxLines: 3,
            // overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              backgroundColor: Colors.yellow,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              letterSpacing: 0.5,
              wordSpacing: 2.0,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dotted,
              decorationThickness: 0.2,
              textBaseline: TextBaseline.ideographic,
              height: 1.5,
              leadingDistribution: TextLeadingDistribution.even,
            ),
    );
  }

}
// RichText Widget
class myWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
              text: 'Hello ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, 
                  fontSize: 20)),
          TextSpan(
              text: 'World! ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 20)),
          TextSpan(
              text: '2024 ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 30, 50),
                  fontSize: 20)),
        ],
      )
    );
  }
}
