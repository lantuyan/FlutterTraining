import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'widgets/big_card.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('A random word:'),
          BigCard(pair: pair),
          const SizedBox(height: 20.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(width: 20.0),
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                label: const Text(
                  'Like',
                  style: TextStyle(fontSize: 20.0),
                ),
                icon: Icon(icon),
              ),
            ],
          ),
        ],
      ),
    );
  }
}