// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
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
            decoration: InputDecoration(helperText: 'Add todo here'),
            onSubmitted: (value) {
              print(value);
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            autofocus: true,
            onPressed: (() {}),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
