import 'package:coffee_app_ui/widgets/coffee_tiles.dart';
import 'package:flutter/material.dart';

const TextStyle kTitleStyle = TextStyle(fontFamily: 'Bebas Neue', fontSize: 54);

const TextStyle kCoffeeDesStyle = TextStyle(color: Colors.grey);

final kTextFieldDecoration = InputDecoration(
  prefixIcon: const Icon(Icons.search),
  hintText: 'Find your coffee...',
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.orange),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade600),
  ),
);

const List<Widget> kCoffeeListItems = [
  CoffeeTiles(coffeeImagePath: 'assets/images/black.jpg', coffeeName: 'Black', coffeePrice: '1.99'),
  CoffeeTiles(coffeeImagePath: 'assets/images/cappucino.jpg', coffeeName: 'Cappucino', coffeePrice: '4.99'),
  CoffeeTiles(coffeeImagePath: 'assets/images/latte.jpg', coffeeName: 'Latte', coffeePrice: '5.99'),
  CoffeeTiles(coffeeImagePath: 'assets/images/milk.jpg', coffeeName: 'Milk', coffeePrice: '2.99'),
];
