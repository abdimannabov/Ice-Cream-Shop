import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/macro.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade100,
      ),
      backgroundColor: Colors.pink.shade100,
      body: Padding(
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
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/1.png'
                  ),
                )
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
                          Text(
                            "Title - Title - Title",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "\$10.00",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "\$10.00",
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
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          MyMacro(title: "Choco", value: 15, emoji: "🍫",),
                          SizedBox(width: 10,),
                          MyMacro(title: "Milk", value: 80, emoji: "🥛",),
                          SizedBox(width: 10,),
                          MyMacro(title: "Fruits", value: 30, emoji: "🍓",)
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 60,
                      child: TextButton(
                        onPressed:() {
                          
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
    );
  }
}