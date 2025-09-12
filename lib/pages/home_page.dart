import 'package:flutter/material.dart';
import 'package:flutter_app/components/grocery_item_tile.dart';
import 'package:flutter_app/model/cart_model.dart';
import 'package:flutter_app/pages/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.large(
        onPressed:() => Navigator.push(context, 
          MaterialPageRoute(builder:(context) {
            return CartPage();
          },)),
        shape: CircleBorder(),
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.shopping_bag,
          color: Colors.redAccent,
          size: 48,
          ),
        ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48,),
            //good morning
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good morning",),
            ),
            
            const SizedBox(height: 4,),
            
            //lets get started
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh items for you!",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),),
            ),

            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
              ),
            
            const SizedBox(height: 24,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Fresh items",
                style: GoogleFonts.notoSerif(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
            ),

            //items+grid
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child){
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.4), 
                    itemCount: value.shopItems.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder:(context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        itemPath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                        },
                      );
                    },
                  );
                }
              ))
          ]
        ),
      ),
    );
  }
}