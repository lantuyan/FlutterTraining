import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'generator_page.dart';
import 'favorites_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Generate Favorite Words',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  void getNext() {
    current = WordPair.random();
    notifyListeners(); // It's  notified when the data is changed.
  }

  var favorites = <WordPair>[];
  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

   void removeFavorite(WordPair pair) {
    favorites.remove(pair);
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavoritesPage();
        break;
      default:
        throw UnimplementedError('no widget for index $selectedIndex');
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Generate Faverite Word')),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return Row(
              children: [
                SafeArea(
                  child: NavigationRail(
                    extended: constraints.maxWidth > 600.0,
                    destinations: [
                      NavigationRailDestination(
                        icon: const Icon(Icons.home),
                        label: const Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: const Icon(Icons.favorite),
                        label: const Text('Favorite'),
                      ),
                    ],
                    selectedIndex: selectedIndex,
                    onDestinationSelected: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                )),
              ],
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: page,
                  )
                ),
                BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.favorite),
                      label: 'Favorite',
                    ),
                  ],
                  currentIndex: selectedIndex,
                  onTap:(value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
