import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMacro extends StatelessWidget {
  final String title;
  final int value;
  final String emoji;
  const MyMacro({
    required this.title,
    required this.value,
    required this.emoji,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 5
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("$emoji",
              style: TextStyle(
                fontSize: 26
              ),),
              SizedBox(height: 5,),
              Text(
                "$title-$value g",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ],
          ),
        ),
      ) 
    );
  }
}