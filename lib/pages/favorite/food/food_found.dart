import 'package:flutter/material.dart';
import 'package:kcal_midterms/pages/favorite/food/foodUtils.dart';
import 'package:kcal_midterms/pages/favorite/food/food_detail.dart';

import 'food.dart';

class FoodFound extends StatefulWidget {
  FoodFound({Key? key}) : super(key: key);

  @override
  _FoodFoundState createState() => _FoodFoundState();
}

class _FoodFoundState extends State<FoodFound> {
  List<Food> foodList = FoodUtils.getFoodData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 2.5 / 1,
          children: List.generate(this.foodList.length, (index) {
            return InkWell(
              child: buildGridItem(index),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(
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

  Widget buildGridItem(int index) => Container(
        decoration: BoxDecoration(
          color: Color(0xFFfdedbf),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(foodList[index].iconPath),
              width: 50,
              height: 50,
            ),
            Text(
              foodList[index].foodName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
            )
          ],
        ),
      );
}
