import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final int duration;
  final Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pictures/greenbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 320.0, 0, 0),
              child: Text(
                'kcal',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 250.0, 0, 0),
              child: Text(
                'ZUMAICA',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
