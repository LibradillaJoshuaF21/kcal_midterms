import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kcal_midterms/pages/favorite/favorite.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  String appBarTitle = 'Home';

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        appBarTitle = 'Home';
        break;
      case 1:
        appBarTitle = 'Search';
        break;
      case 2:
        appBarTitle = 'Camera';
        break;
      case 3:
        appBarTitle = 'Favorites';
        break;
      case 4:
        appBarTitle = 'Profile';
        break;

      default:
    }
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          appBarTitle,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.yellow,
          ),
          FavoritePage(),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.search), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    IconlyBold.camera,
                    color: Colors.white,
                  )),
              label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}
