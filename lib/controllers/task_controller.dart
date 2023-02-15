import 'package:flutter/foundation.dart';

import '../Models/task.dart';

class TaskController extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get getTasks => _tasks;

  int get tasksCount => _tasks.length;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
