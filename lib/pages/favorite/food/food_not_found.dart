import 'package:flutter/material.dart';

class FoodNotFound extends StatelessWidget {
  const FoodNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            color: Colors.black.withOpacity(0.2),
            image: AssetImage("assets/pictures/notFound/notFood.png"),
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'No Foods Found',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'NunitoBold',
                letterSpacing: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 90),
            child: Text(
              'You don\'t save any food. Go ahead, search and save your favorite food.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontFamily: 'NunitoBold',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
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
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
