import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "List item ${widget.index}",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TextCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (value) => setState(() => isChecked = value!),
      ),
    );
  }
}

class TextCheckbox extends StatelessWidget {
  const TextCheckbox(
      {super.key,
      required this.checkboxState,
      required this.toggleCheckboxState});

  final bool checkboxState;
  final Function(bool? value) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
