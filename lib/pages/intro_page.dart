import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(   //Column includes widgets (image+text+button)
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80, right: 80, top: 120,
            ),
            child: Image.asset('lib/images/milk.png'),  //a beautiful logo of milk
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep", //intro title
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
                ),
          ),

          const SizedBox(height: 24,),  //spacing with fixed height

          Text(
            "Fresh items everyday",
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),

          const Spacer(), //to space evenly

          //a button to enter the home page
          GestureDetector(
            //function to navigate to home page
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder:(context) {
                return const HomePage();
              },)),
            //design of the button
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get started",
                style: TextStyle(color: Colors.white, fontSize: 18),
                ),
            ),
          ),

          const Spacer(), //to space evenly
        ],
      ),
    );
  }
}