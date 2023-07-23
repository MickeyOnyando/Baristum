import 'package:coffeeui/components/coffee_tiles.dart';
import 'package:coffeeui/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav_bar.dart';
import '../models/drinks.dart';
import 'drinks_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  //removing favorite drink method
  void removeFavoriteDrink(Drink drink) {
    Provider.of<CoffeeShop>(context, listen: false).removeFavoriteDrink(drink);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully removed drink from favorites"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      bottomNavigationBar: const MyBottomNavBar(selectedIndex: 2),
      body: Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Text(
                  "Your Favorite Drinks",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.fave.length,
                    itemBuilder: (context, index) {
                      //get individual drinks
                      Drink drink = value.fave[index];

                      return Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: CoffeeTile(
                          icon: const Icon(Icons.delete),
                          onIconTap: () => removeFavoriteDrink(drink),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DrinksPage(drink: drink),
                              ),
                            );
                          },
                          drink: drink,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
