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
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //expresso
    Drink(
      coffeeImagePath: "lib/images/coffee12.jpeg",
      coffeeType: "Expresso",
      coffeePrice: "\$ 3.99",
      milkType: "Dairy Milk",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //latte
    Drink(
      coffeeImagePath: "lib/images/coffee11.jpeg",
      coffeeType: "Latte",
      coffeePrice: "\$ 4.99",
      milkType: "Dairy Milk",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //Americano
    Drink(
      coffeeImagePath: "lib/images/coffee14.jpeg",
      coffeeType: "Americano",
      coffeePrice: "\$ 4.00",
      milkType: " ",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //black coffee
    Drink(
      coffeeImagePath: "lib/images/coffee9.jpg",
      coffeeType: "Black Coffee",
      coffeePrice: "\$ 4.30",
      milkType: " ",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //cappuccino
    Drink(
      coffeeImagePath: 'lib/images/coffee3.jpg',
      coffeeType: "Cappuccino",
      coffeePrice: '\$ 4.50',
      milkType: " ",
      coffeeRating: "4.5",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //latte
    Drink(
      coffeeImagePath: "lib/images/coffee10.jpeg",
      coffeeType: "Latte",
      coffeePrice: "\$ 4.30",
      milkType: "Almond Milk",
      coffeeRating: "4.5",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //Americano
    Drink(
      coffeeImagePath: "lib/images/coffee8.jpg",
      coffeeType: "Americano",
      coffeePrice: "\$ 4.00",
      milkType: " ",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),

    //black coffee
    Drink(
      coffeeImagePath: "lib/images/coffee6.jpg",
      coffeeType: "Black Coffee",
      coffeePrice: "\$ 4.30",
      milkType: " ",
      coffeeRating: "4.0",
      drinkDescription:
          "Americano is a type of coffee drink prepared by diluting an expresso with hot water, giving it a different flavor from traditionally brewed coffee.",
    ),
  ];

  //list of drinks in users cart
  final List<Drink> _userCart = [];

  //list of drinks in favorites page
  final List<Drink> _faveDrinks = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

  //get users cart
  List<Drink> get cart => _userCart;

  //get favorite drinks
  List<Drink> get fave => _faveDrinks;

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

  //add favorite drinks
  void addFavoriteDrink(Drink drink) {
    _faveDrinks.add(drink);
    notifyListeners();
  }

  //remove favorite drink
  void removeFavoriteDrink(Drink drink) {
    _faveDrinks.remove(drink);
    notifyListeners();
  }
}
