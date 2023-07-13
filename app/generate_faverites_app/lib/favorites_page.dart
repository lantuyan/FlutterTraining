import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text(
          'No favorites yet',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 300/80,
      ),
      children: [
        for (var pair in appState.favorites)
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.delete,semanticLabel: 'Delete'),
              onPressed: () {
                appState.removeFavorite(pair);
              },
              ),
            title: Text(
              pair.asPascalCase,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          
      ],
    );
  }
}
