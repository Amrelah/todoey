import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../provider/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15,),
          const Text('Add TAsk'),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            controller: taskController,
          ),
          GestureDetector(
            child: Container(
              width: double.infinity,
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: const Center(child: Text('Add')),
            ),
            onTap: (){
              Provider.of<Tasks>(context,listen: false).addTasks(taskController.text);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
