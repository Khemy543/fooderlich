import 'package:flutter/material.dart';
import 'package:flutter_apperentice_chapter3/fooderlich_theme.dart';
import 'package:flutter_apperentice_chapter3/models/explore_recipe.dart';
import 'author_card.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key, required ExploreRecipe recipe}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                  bottom: 16,
                  right: 16,
                ),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
