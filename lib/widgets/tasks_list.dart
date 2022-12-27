// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  TasksList(
    this.task,
  );

  List<Task> task;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TaskTile(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          toggleCheckBoxState: (bool? value) {
            setState(() {
              widget.task[index].toggleDone();
            });
          },
        );
      }),
      itemCount: widget.task.length,
    );
  }
}
