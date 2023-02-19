class Task {
  // final String id;
  final String title;
  final String detail;
  // final DateTime setDate;
  DateTime lastEditDate = DateTime.now();
  bool isDone;

  Task(
      // {required this.id,
      {required this.title,
      required this.detail,
      // required this.setDate,
      this.isDone = false});

  void toggleDone() => isDone = !isDone;
}
