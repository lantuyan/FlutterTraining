import 'package:flutter/material.dart';
import 'package:like_button_learn_state/like_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String likeStatusText = 'Press the button to like!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sateless Widget Example'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LikeButton((isLiked) {
              setState(() {
                likeStatusText = isLiked ? 'You liked it!' : 'You unliked it!';
              });
            }),
            Text(likeStatusText),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
