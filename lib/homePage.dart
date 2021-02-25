import 'package:flutter/material.dart';
import 'package:flutter_persist_bottomnav/accountPage.dart';
import 'package:flutter_persist_bottomnav/blogsPage.dart';
import 'package:flutter_persist_bottomnav/favoritePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screen = [
    BlogPage(),
    FavoritePage(),
    AccountPage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });

  }

  void onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
    print(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectedIndex == 0 ? Colors.black : Colors.blueGrey,
              ),
              label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: selectedIndex == 1 ? Colors.black : Colors.blueGrey,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: selectedIndex == 2 ? Colors.black : Colors.blueGrey,
              ),
              label: "Account"),
        ],
        onTap: onItemTapped,
        currentIndex: selectedIndex,
      ),
    );
  }
}
