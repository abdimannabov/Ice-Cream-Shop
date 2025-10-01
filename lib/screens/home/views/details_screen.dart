import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/macro.dart'; // Make sure this path is correct

// Import your data model
import '/../../models/ice_cream.dart'; // Adjust path if necessary, e.g., 'package:flutter_app/models/ice_cream.dart'

class DetailsScreen extends StatelessWidget {
  final IceCream iceCream; // Add a final IceCream object to the constructor

  const DetailsScreen({super.key, required this.iceCream}); // Require it in the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade100,
        title: Text(iceCream.name), // Display ice cream name in app bar
      ),
      backgroundColor: Colors.pink.shade100,
      body: SingleChildScrollView( // Added SingleChildScrollView to prevent overflow
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width - (40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 93, 176),
                    borderRadius: BorderRadiusDirectional.circular(24),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 5
                      )
                    ],
                  image: DecorationImage( // Use iceCream.imageUrl here
                    image: AssetImage(iceCream.imageUrl),
                    fit: BoxFit.contain, // Ensure image covers the container
                  ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(24),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 5
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded( // Use Expanded to prevent text overflow
                              child: Text(
                                iceCream.name, // Use iceCream.name
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "\$${iceCream.price.toStringAsFixed(2)}", // Use iceCream.price
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                if (iceCream.oldPrice != null) // Only show old price if it exists
                                  Text(
                                    "\$${iceCream.oldPrice!.toStringAsFixed(2)}", // Use iceCream.oldPrice
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 1.5
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                        child: Text(
                          iceCream.description, // Display description
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView( // Added SingleChildScrollView for macros
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              // Dynamically generate MyMacro widgets
                              ...iceCream.macros.map((macro) => Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: MyMacro(title: macro.title, value: macro.value, emoji: macro.emoji),
                              )).toList(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: 60,
                        child: TextButton(
                          onPressed:() {
                            // Buy now action
                          }, 
                          style: TextButton.styleFrom(
                            elevation: 3,
                            backgroundColor: Colors.blue.shade200
                          ),
                          child: Text(
                            "Buy now!",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          )
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}