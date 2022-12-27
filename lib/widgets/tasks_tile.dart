// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {Key? key,
      required this.taskTitle,
      this.isChecked,
      this.toggleCheckBoxState})
      : super(key: key);

  bool? isChecked;
  String taskTitle;
  Function(bool?)? toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: isChecked!
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : TextStyle(decoration: TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: toggleCheckBoxState,
          tristate: false,
          value: isChecked,
        ));
  }
}
