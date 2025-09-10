import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  const GroceryItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text("Some item",
      textAlign: TextAlign.center,),
    );
  }
}