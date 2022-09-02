// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'task_widget.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_data.dart';

// ignore: must_be_immutable
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskWidget(
              taskTitle: taskData.tasks[index].name,
              isChanged: taskData.tasks[index].isChecked,
              checkboxCallback: (newValue) {
               taskData.updateTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
