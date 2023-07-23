import 'package:coffeeui/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drinks.dart';
import 'home_page.dart';

class DrinksPage extends StatefulWidget {
  final Drink drink;
  const DrinksPage({
    required this.drink,
    super.key,
  });

  @override
  State<DrinksPage> createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.drink.coffeeImagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: const TopWidgets(
                              icon: Icon(Icons.arrow_back_ios_new_rounded),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => value.addFavoriteDrink(widget.drink),
                            child: const TopWidgets(
                              icon: Icon(Icons.favorite_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.drink.coffeeType,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      widget.drink.milkType,
                                      style: TextStyle(
                                          color: Colors.grey.shade400),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    DrinkContainers(
                                      icon: Icon(
                                        Icons.coffee,
                                        color: Colors.amber,
                                      ),
                                      drink: "Coffee",
                                    ),
                                    DrinkContainers(
                                      icon: Icon(
                                        Icons.water_drop,
                                        color: Colors.amber,
                                      ),
                                      drink: "Milk",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 4),
                                      child: Text(
                                        widget.drink.coffeeRating,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "(6.986)",
                                      style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 35,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                  ),
                                  child: const Center(
                                      child: Text('Medium Roasted')),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.drink.drinkDescription,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    const Text("Size"),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DrinkSizes(size: "S"),
                        DrinkSizes(size: "M"),
                        DrinkSizes(size: "L"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text("Price"),
                            const SizedBox(height: 5),
                            Text(" ${widget.drink.coffeePrice}"),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => value.addToCart(widget.drink),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrinkSizes extends StatelessWidget {
  final String size;
  const DrinkSizes({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          size,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class DrinkContainers extends StatelessWidget {
  final String drink;
  final Widget icon;

  const DrinkContainers({
    required this.drink,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            icon,
            Text(
              drink,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class TopWidgets extends StatelessWidget {
  final Widget icon;
  const TopWidgets({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(5),
      ),
      child: icon,
    );
  }
}
