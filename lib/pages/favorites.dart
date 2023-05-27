import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favorites"),
      ),
      bottomNavigationBar: MyBottomNavBar(selectedIndex: 2),
    );
  }
}
