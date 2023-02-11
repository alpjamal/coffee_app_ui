import 'package:flutter/material.dart';

import '../models/constants.dart';

class CoffeeTiles extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTiles({
    Key? key,
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      padding: const EdgeInsets.all(12),
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black54),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(coffeeImagePath, height: 300, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(coffeeName, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 4),
                Text('With Almond Milk', style: kCoffeeDesStyle.copyWith(color: Colors.grey.shade700)),
              ],
            ),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ $coffeePrice', style: kTitleStyle.copyWith(fontSize: 30)),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.orange),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
