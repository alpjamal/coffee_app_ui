import 'package:flutter/material.dart';

import '../models/constants.dart';
import '../widgets/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeTypes = [
    ["Cappucino", false],
    ["Latte", false],
    ["Black", false],
    ["Tea", false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (var i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  var currNavBarIndex = 1;
  setNavBarIndex(int value) {
    setState(() => currNavBarIndex = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.person)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currNavBarIndex,
        showUnselectedLabels: false,
        onTap: (value) => setNavBarIndex(value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text('Find the best coffee for you', style: kTitleStyle),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(decoration: kTextFieldDecoration),
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTypes.length,
              itemBuilder: (context, index) {
                return Center(
                  child: CoffeType(
                    coffeeType: coffeeTypes[index][0],
                    isSelected: coffeeTypes[index][1],
                    onTap: () => coffeeTypeSelected(index),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
              children: kCoffeeListItems,
            ),
          ),
        ],
      ),
    );
  }
}
