import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kcal_midterms/selection.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int activeIndex = 0;

  final boardingImages = [
    'assets/pictures/eatHealthy.PNG',
    'assets/pictures/healthyRecipes.PNG',
    'assets/pictures/trackHealth.PNG'
  ];

  final boardTexts = [
    {
      'title': 'Eat Healthy',
      'subtext':
          'Maintain good health should be the primary focus of everyone.',
    },
    {
      'title': 'Healthy Recipes',
      'subtext': 'Browse thousands of healthy recipes from all over the world.',
    },
    {
      'title': 'Track Your Health',
      'subtext': 'With amazing inbuilt tools you can track your progress.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
              child: Center(
                child: Text(
                  'kcal',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NunitoBold',
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                    itemCount: boardingImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final boardingImage = boardingImages[index];
                      final boardTitle = boardTexts[index]['title'];
                      final boardText = boardTexts[index]['subtext'];
                      return buildBoard(
                          boardingImage, boardTitle!, boardText!, index);
                    },
                  ),
                  const SizedBox(height: 32),
                  buildIndicator(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
              child: SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false);
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
              child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(fontSize: 19, color: Colors.grey),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Log In',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(
                          color: Colors.blue,
                        ))
                  ])),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBoard(String boardingImage, String boardTitle, String boardText,
          int index) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Image.asset(
              boardingImage,
              height: 250,
              width: 400,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
              child: Text(
                boardTitle,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NunitoBold',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
              child: Text(
                boardText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NunitoBold',
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: boardingImages.length,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.orangeAccent,
          dotColor: Colors.orangeAccent,
          dotWidth: 15.0,
          dotHeight: 10.0,
        ),
      );
}
