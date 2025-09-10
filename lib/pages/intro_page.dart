import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80, right: 80, top: 120,
            ),
            child: Image.asset('lib/images/milk.png'),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold
                  ),
                ),
          ),

          Text(
            "Fresh items everyday",
          ),

          const Spacer(),

          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(24),
            child: Text("Get started",
              style: TextStyle(color: Colors.white, fontSize: 18),
              ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}