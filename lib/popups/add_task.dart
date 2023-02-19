import 'package:flutter/material.dart';
import 'package:plannurx_lite/Models/task.dart';
import 'package:plannurx_lite/controllers/task_controller.dart';
import 'package:provider/provider.dart';

class AddTaskPopup extends StatefulWidget {
  const AddTaskPopup({super.key});

  @override
  State<AddTaskPopup> createState() => _AddTaskPopupState();
}

class _AddTaskPopupState extends State<AddTaskPopup> {
  final taskTitleController = TextEditingController();
  final taskDetailController = TextEditingController();

  void addNewTask(BuildContext context) {
    var task = Task(
        title: taskTitleController.text.trim(),
        detail: taskDetailController.text.trim());
    taskTitleController.clear();
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
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            TextField(
              autofocus: true,
              controller: taskTitleController,
              minLines: 1,
              style: const TextStyle(),
              decoration: const InputDecoration(hintText: "title"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: taskDetailController,
              minLines: 5,
              maxLines: 8,
              keyboardType: TextInputType.multiline,
              style: const TextStyle(),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                hintText: "Write your details here..",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange.shade600),
                  borderRadius: BorderRadius.circular(5),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text("Priority Level:"),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Text("1"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text("Schedule For:"),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Text("Oct 15 2023"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => addNewTask(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                textStyle: const TextStyle(fontSize: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              ),
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
