import 'package:flutter/material.dart';
import 'package:kcal_midterms/pages/favorite/food/food.dart';
import 'package:kcal_midterms/pages/favorite/food/foodUtils.dart';
import 'package:kcal_midterms/pages/favorite/food/food_found.dart';
import 'package:kcal_midterms/pages/favorite/food/food_not_found.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipeUtils.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe_found.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe_not_found.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<bool> isSelected = [true, false];
  List<Food> foodList = FoodUtils.getFoodData();
  List<Recipe> recipeList = RecipeUtils.getRecipeData();
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: ToggleButtons(
              renderBorder: false,
              children: [
                SizedBox(
                  width: 170,
                  height: 45,
                  child: Center(
                    child: Text(
                      'Foods',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: 45,
                  child: Center(
                    child: Text(
                      'Recipes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
              isSelected: isSelected,
              color: Colors.green,
              selectedColor: Colors.white,
              fillColor: Colors.green,
              borderRadius: BorderRadius.circular(15),
              onPressed: (int index) {
                setState(
                  () {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected[buttonIndex] = true;
                      } else {
                        isSelected[buttonIndex] = false;
                      }
                    }
                  },
                );
                onTapped(index);
              },
            ),
          ),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                Container(
                  child: isListempty(foodList) ? FoodNotFound() : FoodFound(),
                ),
                Container(
                  child: Center(
                    child: isListempty(recipeList)
                        ? RecipeNotFound()
                        : RecipeFound(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    controller.jumpToPage(index);
  }

  bool isListempty(List daList) {
    if (daList.length == 0) {
      return true;
    } else {
      return false;
    }
  }
}
