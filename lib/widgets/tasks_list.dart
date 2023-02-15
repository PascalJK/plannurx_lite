import 'package:flutter/material.dart';
import 'package:plannurx_lite/Models/task.dart';
import 'package:plannurx_lite/controllers/task_controller.dart';
import 'package:provider/provider.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var taskController = context.watch<TaskController>();

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: taskController.tasksCount,
      itemBuilder: (context, index) {
        Task taskIndex = taskController.getTasks[index];
        return TaskTile(
          task: taskIndex,
          checkboxCallback: (value) =>
              taskController.updateTask(taskIndex),
        );
      },
    );
  }
}
