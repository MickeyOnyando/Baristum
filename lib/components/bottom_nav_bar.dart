import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:coffeeui/pages/cart_page.dart';
import 'package:coffeeui/pages/home_page.dart';
import 'package:coffeeui/pages/favorites.dart';

class MyBottomNavBar extends StatefulWidget {
  final int selectedIndex;

  const MyBottomNavBar({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void navigateBottomBar(int newIndex) {
    if (mounted) {
      setState(() {
        _selectedIndex = newIndex;
      });
    }

    switch (newIndex) {
      case 0: //home
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        break;

      case 1: //cart
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        );
        break;

      case 2: //favorites
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FavoritesPage(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GNav(
      selectedIndex: _selectedIndex,
      onTabChange: (value) => navigateBottomBar(value),
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
