class Task {
  final String task;
  bool isDone;

  Task({required this.task, this.isDone = false}) {
    print(task);
  }

  void toggleDone() => isDone = !isDone;
}
