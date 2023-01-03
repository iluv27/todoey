// ignore_for_file: unnecessary_overrides, list_remove_unrelated_type

import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: 'Buy Flour'),
    Task(name: 'Buy Butter'),
    Task(name: 'Buy eggs')
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTaskTitle) {
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void removeTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
