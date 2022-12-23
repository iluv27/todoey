// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

List<Task> task = [
  Task(name: 'Buy Flour'),
  Task(name: 'Buy Butter'),
  Task(name: 'Buy eggs')
];

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <TaskTile>[
        TaskTile(
          taskTitle: task[0].name,
          isChecked: task[0].isDone,
        ),
        TaskTile(
          taskTitle: task[1].name,
          isChecked: task[1].isDone,
        ),
        TaskTile(
          taskTitle: task[2].name,
          isChecked: task[2].isDone,
        ),
      ],
    );
  }
}
