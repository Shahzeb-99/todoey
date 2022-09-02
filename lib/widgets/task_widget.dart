import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskWidget extends StatelessWidget {
  final bool? isChanged;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  const TaskWidget(
      {Key? key,
      required this.taskTitle,
      this.isChanged,
      this.checkboxCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChanged! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChanged,
        onChanged: checkboxCallback,
      ),
    );
  }
}
