// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    this.addTaskCallback,
    super.key,
  });

  Function(TextEditingController?)? addTaskCallback;

  TextEditingController newTaskTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
          ),
          TextField(
            controller: newTaskTitle,
            decoration: InputDecoration(helperText: 'Add todo here'),
            onSubmitted: (value) {
              newTaskTitle.text = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            autofocus: true,
            onPressed: (() {
              addTaskCallback!(newTaskTitle);
            }),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
