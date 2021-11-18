import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipeUtils.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe_detail.dart';

class RecipeFound extends StatefulWidget {
  RecipeFound({Key? key}) : super(key: key);

  @override
  _RecipeFoundState createState() => _RecipeFoundState();
}

class _RecipeFoundState extends State<RecipeFound> {
  List<Recipe> recipeList = RecipeUtils.getRecipeData();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(this.recipeList.length, (index) {
            return InkWell(
              child: buildRecipeCard(index),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetail(
                      passedIndex: index,
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }

  Widget buildRecipeCard(int index) => Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: Color(0xFFfdedbf),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage(recipeList[index].imgPath),
                      width: 500,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(
                        IconlyLight.heart,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text(
                          recipeList[index].timeCook.toString() + '  min',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Icon(
                          Icons.people,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Text(
                          recipeList[index].servings.toString() + '  serve',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 16,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: Container(
                    child: Text(
                      recipeList[index].recipeName,
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  child: Container(
                    child: Text(
                      recipeList[index].shortDesc,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
