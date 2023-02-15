import 'package:flutter/material.dart';
import 'package:plannurx_lite/Models/task.dart';
import 'package:plannurx_lite/controllers/task_controller.dart';
import 'package:provider/provider.dart';

class AddTaskPopup extends StatelessWidget {
  AddTaskPopup({super.key});

  final taskTextController = TextEditingController();

  void addNewTask(BuildContext context) {
    var task = Task(task: taskTextController.text.trim());
    taskTextController.clear();
    context.read<TaskController>().addTask(task);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom + 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Add Task",
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            TextField(
              autofocus: true,
              controller: taskTextController,
              minLines: 1,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              style: const TextStyle(),
              decoration:
                  const InputDecoration(hintText: "Write your task here.."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => addNewTask(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                textStyle: const TextStyle(fontSize: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              ),
              child: const Text("Add Task"),
            )
          ],
        ),
      ),
    );
  }
}
