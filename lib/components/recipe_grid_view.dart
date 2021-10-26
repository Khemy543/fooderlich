import 'package:flutter/material.dart';
import 'package:flutter_apperentice_chapter3/components/component.dart';
import '../models/models.dart';

class RecipeGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipeGridView({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final simpleRecipe = recipes[index];
            return RecipeThumbnail(recipe: simpleRecipe);
          },
          itemCount: recipes.length),
    );
  }
}
