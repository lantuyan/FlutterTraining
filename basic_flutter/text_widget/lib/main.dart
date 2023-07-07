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
        body: Center(
          child: Text(
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
          ),
          // Text.rich
          //     child: Text.rich(
          //   TextSpan(
          //     children: [
          //       TextSpan(text: 'This text is '),
          //       TextSpan(
          //           text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
          //       TextSpan(
          //           text: ' and this text is ', style: TextStyle(fontSize: 24)),
          //       TextSpan(
          //           text: 'italic',
          //           style: TextStyle(fontStyle: FontStyle.italic)),
          //     ],
          //   ),
          // )
        ),
      ),
    );
  }
}
