import 'package:coffeeui/models/drinks.dart';
import 'package:flutter/cupertino.dart';

class CoffeeShop extends ChangeNotifier {
  //list of drinks for sale
  final List<Drink> _shop = [
    //cappuccino
    Drink(
      coffeeImagePath: 'lib/images/coffee4.jpg',
      coffeeType: "Cappuccino",
      coffeePrice: '\$ 4.50',
      milkType: "Almond Milk",
      coffeeRating: "4.5",
    ),

    //expresso
    Drink(
      coffeeImagePath: "lib/images/coffee5.jpg",
      coffeeType: "Expresso",
      coffeePrice: "\$ 3.99",
      milkType: "Dairy Milk",
      coffeeRating: "4.0",
    ),

    //latte
    Drink(
      coffeeImagePath: "lib/images/coffee11.jpeg",
      coffeeType: "Latte",
      coffeePrice: "\$ 4.99",
      milkType: "Dairy Milk",
      coffeeRating: "4.0",
    ),

    //Americano
    Drink(
      coffeeImagePath: "lib/images/coffee14.jpeg",
      coffeeType: "Americano",
      coffeePrice: "\$ 4.00",
      milkType: " ",
      coffeeRating: "4.0",
    ),
  ];

  //list of drinks in users cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

  //get users cart
  List<Drink> get cart => _userCart;

  //add drinks to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //remove drinks from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
