import 'package:kcal_midterms/pages/favorite/recipe/ingredients.dart';

class Recipe {
  String imgPath;
  String recipeName;
  int timeCook;
  int servings;
  String shortDesc;
  String recipeDesc;
  List<Ingredients> listIngredients;
  List<String> directions;

  Recipe({
    required this.imgPath,
    required this.recipeName,
    required this.timeCook,
    required this.servings,
    required this.shortDesc,
    required this.recipeDesc,
    required this.listIngredients,
    required this.directions,
  });
}
