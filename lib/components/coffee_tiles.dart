import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drinks.dart';
import '../models/shop.dart';

class CoffeeTile extends StatefulWidget {
  final Drink drink;
  final Icon icon;
  final VoidCallback onTap;

  const CoffeeTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.drink,
  });

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  // add to cart function
  void addToCart() {
    Provider.of<CoffeeShop>(context, listen: false).addToCart(widget.drink);

    //lets user know drink has been successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 175,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(widget.drink.coffeeImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Text(widget.drink.coffeeRating),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: Text(
                    widget.drink.coffeeType,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  widget.drink.milkType,
                  style: const TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.drink.coffeePrice),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange,
                        ),
                        child: GestureDetector(
                          onTap: addToCart,
                          child: widget.icon,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
