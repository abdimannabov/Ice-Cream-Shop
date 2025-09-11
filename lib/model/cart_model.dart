import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items for sale
  final List _shopItems = [
    ["Bread", "4.00", "lib/images/bread.png", Colors.brown],
    ["Coca-Cola", "6.00", "lib/images/cola.png", Colors.yellow],
    ["Milk", "3.69", "lib/images/milk.png", Colors.blue],
    ["Strawberry", "2.00", "lib/images/strawberry.png", Colors.red],
  ];

  get shopItems => _shopItems;
}
