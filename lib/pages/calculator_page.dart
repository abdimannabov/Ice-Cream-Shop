import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  //buttons
  final List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  //variables
  int _a = 0;
  int _b = 0;
  int _res = 0;
  //method
  void _setA(int current){
    setState(() {
      _a = current;
    });
  }
  void _setB(int current){
    setState(() {
      _b = current;
    });
  }
  void _addVariables(){
    setState(() {
      _a = _a + _b;
    });
  }
  void _subtractVariables(){
    setState(() {
      _a = _a - _b;
    });
  }
  void _showResult(){
    setState(() {
      _res = _a;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 133, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 145, 164, 1),
        title: Text("Calculator App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.all(100)),
          Row(
            children: [
              SizedBox(width: 40,),
              Container(
                child: Text("Result: ",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 48
                ),)
              ),
              SizedBox(width: 40,),
              Text(_res.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold
              ),)
              ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              ElevatedButton(onPressed: _addVariables, 
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 80), // Set width to 200 and height to 50
              ),
              child: Text("+"),
              ),
              SizedBox(width: 40),
              ElevatedButton(onPressed: _subtractVariables, 
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 80), // Set width to 200 and height to 50
              ),
              child: Text("-")),
              SizedBox(width: 40),
              ElevatedButton(onPressed: _showResult, 
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 80), // Set width to 200 and height to 50
              ),
              child: Text("=")),
            ],
          ),
          SizedBox(height: 16,),
          SizedBox(
            height: 450,
            child: GridView.builder(
              itemCount: numbers.length,
              physics: NeverScrollableScrollPhysics(), // 🔹 Disable scrolling
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
              itemBuilder:(context, index) { 
                return GestureDetector(
                  onTap: () => _setA(numbers[index]),
                  onLongPress: () => _setB(numbers[index]),
                  child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 64, 160),
                  borderRadius: BorderRadius.circular(44)
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(4),
                child: Text((index+1).toString(),
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 254, 253, 253),
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                );
                },
              ),
          ),
        ],
      )
    );
  }
}