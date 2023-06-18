import 'package:coffeeui/components/coffee_tiles.dart';
import 'package:coffeeui/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav_bar.dart';
import '../models/drinks.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      bottomNavigationBar: const MyBottomNavBar(selectedIndex: 1),
      body: Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //heading
                const Text(
                  "Your drinks",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //list of drinks in the cart
                Expanded(
                  child: ListView.builder(
                      itemCount: value.cart.length,
                      itemBuilder: (context, index) {
                        //get individual drinks
                        Drink drink = value.cart[index];

                        //return as a nice tile
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CoffeeTile(
                            onTap: () => removeFromCart(drink),
                            drink: drink,
                            icon: const Icon(Icons.delete_rounded),
                          ),
                        );
                      }),
                ),
                //pay button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
