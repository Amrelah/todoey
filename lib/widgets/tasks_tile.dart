import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/task_provider.dart';

class TasksTile extends StatelessWidget {
  final int index;
  const TasksTile({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, value, child) => ListTile(
        title: Text(value.tasksName(index),style: TextStyle(decoration: value.tasksIsDone(index)? TextDecoration.lineThrough: TextDecoration.none)),
        trailing: Checkbox(
            value: value.tasksIsDone(index),
            onChanged: (val){
              value.toggleDone(index);
            }),
      ),
    );
  }
}
