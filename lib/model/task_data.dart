import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_list_app_fluter/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  // Add task to _tasks.
  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // Return a task from _tasks list.
  Task getTask(int index) {
    return _tasks[index];
  }

  // Return count of _tasks list.
  int get taskCount {
    return _tasks.length;
  }

  // Update given task.
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  // Delete given task.
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
