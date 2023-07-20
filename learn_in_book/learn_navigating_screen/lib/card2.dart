import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          children: [
             const AuthorCard(
              authorName: 'Lan tuy an',
              title: 'Food writer',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
             Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Đầu bếp',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child:Text(
                       'ProVip',
                       style: FooderlichTheme.lightTextTheme.headline1,
                    ),


                  ),
                )
              ],
            )  
          )
          ],
        )
            
      ),
    );
  }
}
