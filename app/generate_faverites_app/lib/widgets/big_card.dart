import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });
  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          // ~ cải thiện khả năng nhận diện âm thanh cho người dùng
          semanticsLabel: '${pair.first}, ${pair.second}', // for accessibility
        ),
      ),
    );
  }
}
