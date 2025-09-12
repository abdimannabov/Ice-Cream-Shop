import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items for sale
  final List _shopItems = [
    ["Bread", "4.00", "lib/images/bread.png", Colors.brown],
    ["Coca-Cola", "6.00", "lib/images/cola.png", Colors.yellow],
    ["Milk", "3.69", "lib/images/milk.png", Colors.blue],
    ["Strawberry", "2.00", "lib/images/strawberry.png", Colors.red],
  ];
  //getting items from store
  get shopItems => _shopItems;

  //list of items inside cart
  List _cartItems = [];

  //get cartItems
  get cartItems => _cartItems;

  //add items to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items from Cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate price
  String calculateTotalPrice(){
    double _totalPrice = 0;
    for(int i = 0; i<_cartItems.length; i++){
      _totalPrice += double.parse(_cartItems[i][1]);
    }
    return _totalPrice.toStringAsFixed(2);
  }
}
