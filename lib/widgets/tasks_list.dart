// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).task[index].name,
          isChecked: Provider.of<TaskData>(context).task[index].isDone,
          toggleCheckBoxState: (bool? value) {
            setState(() {
              Provider.of<TaskData>(context).task[index].toggleDone();
            });
          },
        );
      }),
      itemCount: Provider.of<TaskData>(context).task.length,
    );
  }
}
