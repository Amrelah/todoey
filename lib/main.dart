import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider/task_provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

import 'models/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<Tasks>(
      create: (BuildContext context) => Tasks(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
