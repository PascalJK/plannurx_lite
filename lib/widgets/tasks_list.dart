import 'package:flutter/material.dart';
import 'package:plannurx_lite/Models/task.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasks,
    required this.checkboxCallback,
  });

  final List<Task> tasks;
  final VoidCallback checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
          checkboxCallback: (value) {
            tasks[index].toggleDone();
            checkboxCallback();
          },
        );
      },
    );
  }
}
