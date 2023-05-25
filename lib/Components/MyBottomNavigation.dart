import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavigation({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[400],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            onTabChange: (value) => onTabChange!(value),
            backgroundColor: Colors.red.shade400,
            activeColor: Colors.red.shade400,
            gap: 8,
            tabBackgroundColor: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ]),
      ),
    );
  }
}
