import 'package:flutter/material.dart';

class AddTaskPopup extends StatelessWidget {
  const AddTaskPopup({super.key});

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
              minLines: 1,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              style: TextStyle(),
              decoration: InputDecoration(hintText: "Write your task here.."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
