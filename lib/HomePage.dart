import 'package:flutter/material.dart';

import 'Components/MyBottomNavigation.dart';
import 'Pages/FavoritePage.dart';
import 'Pages/MainPage.dart';
import 'Pages/SearchPage.dart';
import 'Pages/SettingPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _seclectedIndex = 0;

  void NavigationNavbar(int index) {
    setState(() {
      _seclectedIndex = index;
    });
  }

  List<Widget> _pages = [
    MainPage(),
    FavoritePage(),
    SearchPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigation(
        onTabChange: (index) => NavigationNavbar(index),
      ),
      body: _pages[_seclectedIndex],
    );
  }
}
