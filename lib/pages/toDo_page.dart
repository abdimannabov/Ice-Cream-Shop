import 'package:flutter/material.dart';
import 'package:flutter_app/util/dialog_box.dart';
import 'package:flutter_app/util/toDo_tile.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final _controller = TextEditingController();
  //Default tasks
  List toDoList = [
    ["Finish Tutorial", false,],
    ["Prepare for Uni", true,],
  ];
  //a func to work with checkbox
  void changeCheckbox(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  //saves new task
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      Navigator.of(context).pop();
    });
  }

  //creates new tasks
  void createNewTask(){
    showDialog(context: context,
    builder: (context){
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel:() => Navigator.of(context).pop(),
      );
    });
  }

  //deletes tasks
  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder:(context, index) {
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged:(value) {
              changeCheckbox(value, index);
            },
            deleteFunction:(context) => deleteTask(index),
          );
        },
      )
    );
  }
}