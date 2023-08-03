import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import '../provider/task_provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, value, child) =>ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        itemCount: value.taskCount,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: TasksTile(index: index,),
              onHorizontalDragEnd: (DragEndDetails endDetails){
                value.deleteTask(index);
             },);
        },),
    );
  }
}

