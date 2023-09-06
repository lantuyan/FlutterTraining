import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import '../../network/recipe_model.dart';
import '../../data/models/models.dart';
import '../../data/memory_repository.dart';

import '../colors.dart';

class RecipeDetails extends StatelessWidget {
  // TODO: Replace with new constructor
  final Recipe recipe;

  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<MemoryRepository>(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    // Comment out Align()
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Image.asset(
                    //     'assets/images/pizza_w700.png',
                    //     height: 200,
                    //     width: 200,
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CachedNetworkImage(
                        imageUrl: recipe.image ?? '',
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fill,
                        width: size.width,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: shim,
                        ),
                        child: const BackButton(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO: Replace hardcoded Chicken Vesuvio
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    // 'Chicken Vesuvio',
                    recipe.label ?? '',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO: Replace hardcoded calories
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Chip(
                    label: Text(
                      getCalories(recipe.calories),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {
                      // TODO: Add insertRecipe here
                      repository.insertRecipe(recipe);
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/images/icon_bookmark.svg',
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Bookmark',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
