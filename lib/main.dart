import 'package:flutter/material.dart';
import 'package:kcal_midterms/splashpage.dart';
import 'package:kcal_midterms/landing-page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(
        duration: 3,
        goToPage: LandingPage(),
      ),
    ),
  );
}
