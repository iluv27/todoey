import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [
    Task(name: 'Buy Flour'),
    Task(name: 'Buy Butter'),
    Task(name: 'Buy eggs')
  ];
}
