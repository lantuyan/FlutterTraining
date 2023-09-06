import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'data/memory_repository.dart';
import 'mock_service/mock_service.dart';

import 'ui/main_screen.dart';

Future<void> main() async {
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    log('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   lazy: false,
    //   create: (_) => MemoryRepository(),
    //   child: MaterialApp(
    //     title: 'Recipes',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       brightness: Brightness.light,
    //       primaryColor: Colors.white,
    //       primarySwatch: Colors.blue,
    //       visualDensity: VisualDensity.adaptivePlatformDensity,
    //     ),
    //     home: const MainScreen(),
    //   ),
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => MemoryRepository(),
        ),
        Provider(
          lazy: false,
          create: (context) => MockService()..create(),
        )
      ],
      child: MaterialApp(
        title: 'Recipes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
