import 'package:flutter/material.dart';

import 'food.dart';
import 'foodUtils.dart';

class FoodDetail extends StatefulWidget {
  FoodDetail({Key? key, required this.passedIndex}) : super(key: key);
  final int passedIndex;

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  List<Food> foodList = FoodUtils.getFoodData();

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
          'Foods',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            buildFoodCard(widget.passedIndex),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                child: Text(
                  foodList[widget.passedIndex].foodDesc1,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Container(
                child: Text(
                  foodList[widget.passedIndex].foodDesc2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 90),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            child: Image.asset(
                              foodList[widget.passedIndex].imgPath1,
                              height: 250,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Image.asset(
                              foodList[widget.passedIndex].imgPath2,
                              height: 250,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
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

  Widget buildFoodCard(int index) => Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFfdedbf),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage(foodList[index].iconPath),
                  width: 80,
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          foodList[index].foodName,
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Alternative Name: ' + foodList[index].altName,
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
