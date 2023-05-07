import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.amber,
      color: Colors.grey[300],
      tabs: const [
        GButton(icon: Icons.home_sharp),
        GButton(icon: Icons.shop),
        GButton(icon: Icons.favorite),
      ],
    );
  }
}
