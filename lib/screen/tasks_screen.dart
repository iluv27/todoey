// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'add_tasks_screen.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool checkedTask = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            showModalBottomSheet(
                context: context,
                builder: ((context) => AddTaskScreen(
                      addTaskCallback: (newTaskTitle) {
                        // setState(() {
                        //   Provider.of<TaskData>(context)task.add(Task(name: newTaskTitle!.text));
                        // });
                        Navigator.pop(context);
                      },
                    )),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ));
          }),
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ink(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(), color: Colors.white),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.list),
                      iconSize: 40,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).task.length} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
