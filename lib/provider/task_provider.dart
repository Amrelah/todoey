import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../models/task.dart';

class Tasks extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy car'),
  ];

//   UnmodifiableListView<Task> get tasks{
//     return UnmodifiableListView(_tasks);
// }

  String  tasksName(int index){
    return _tasks[index].name;
  }

  bool  tasksIsDone(int index){
    return _tasks[index].isDone;
  }

  void addTasks(String taskName){
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleDone(int index){
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  //this is another option
  // void toggleDone(Task task){
  //   task.toggleDone;
  //   notifyListeners();
  // }

  int get taskCount{
    return _tasks.length;
  }
}