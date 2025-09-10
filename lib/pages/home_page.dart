import 'package:flutter/material.dart';
import 'package:flutter_app/components/grocery_item_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemBuilder:(context, index) {
                  return GroceryItemTile();
                },))
          ]
        ),
      ),
    );
  }
}