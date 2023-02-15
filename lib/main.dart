import 'package:flutter/material.dart';
import 'package:plannurx_lite/screens/task_screen.dart';
import 'package:provider/provider.dart';

import 'controllers/task_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskController(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: TaskScreen(),
        ),
      ),
    );
  }
}
