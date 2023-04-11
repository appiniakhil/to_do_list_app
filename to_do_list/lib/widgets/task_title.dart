import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  final longPressCallback;

  TaskTile(
      {required this.isChecked,
        required this.taskTitle,
        this.checkboxCallback,
        this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Color(0xff00ADB5),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}