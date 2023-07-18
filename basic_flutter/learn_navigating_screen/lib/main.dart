// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Lantuyan',
      home: const Home(),
    );
  }
}
