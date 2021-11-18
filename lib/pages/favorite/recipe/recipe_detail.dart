import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipeUtils.dart';

class RecipeDetail extends StatefulWidget {
  RecipeDetail({Key? key, required this.passedIndex}) : super(key: key);
  final int passedIndex;

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  List<Recipe> recipeList = RecipeUtils.getRecipeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Recipes',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Image(
              image: AssetImage(recipeList[widget.passedIndex].imgPath),
              height: 210,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 65,
                  color: Color(0xFFfdedbf),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text(
                          recipeList[widget.passedIndex].timeCook.toString() +
                              '  min',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
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
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Text(
                          recipeList[widget.passedIndex].servings.toString() +
                              '  serve',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.pink,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      child: Text(
                        recipeList[widget.passedIndex].recipeName,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child:
                            Icon(IconlyLight.heart, color: Colors.lightGreen),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 0,
                          padding: EdgeInsets.all(15),
                          primary: Color(0xFFEEFDDF),
                          onPrimary: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Container(
                child: Text(
                  recipeList[widget.passedIndex].recipeDesc,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: SizedBox(
                height: 200,
                width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      recipeList[widget.passedIndex].listIngredients.length,
                  itemBuilder: (context, index) {
                    return buildIngredientCard(widget.passedIndex, index);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                child: Text(
                  'Directions',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Column(
                children: List.generate(
                    this.recipeList[widget.passedIndex].directions.length,
                    (index) {
                  return buildDirectionStep(widget.passedIndex, index);
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SizedBox(
          width: 300,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
            ),
            onPressed: () {},
            child: Text(
              'Add to Favorite',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildIngredientCard(int recipeIndex, int ingredientIndex) => Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Container(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(recipeList[recipeIndex]
                    .listIngredients[ingredientIndex]
                    .imgPath),
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  recipeList[recipeIndex]
                      .listIngredients[ingredientIndex]
                      .ingredientName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  recipeList[recipeIndex]
                          .listIngredients[ingredientIndex]
                          .amount
                          .toString() +
                      ' ' +
                      recipeList[recipeIndex]
                          .listIngredients[ingredientIndex]
                          .measurement,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildDirectionStep(int recipeIndex, int directionIndex) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Step ' + (directionIndex + 1).toString(),
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  recipeList[recipeIndex].directions[directionIndex],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
