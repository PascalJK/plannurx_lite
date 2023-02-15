import 'package:flutter/material.dart';
import 'package:plannurx_lite/Models/task.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 1500,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          index: index,
        );
      },
    );
  }
}
