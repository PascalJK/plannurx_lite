import 'package:flutter/material.dart';
import 'package:plannurx_lite/screens/task_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TaskScreen(),
      ),
    );
  }
}
