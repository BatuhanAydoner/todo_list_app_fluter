import 'package:flutter/material.dart';

class TaskListItem extends StatefulWidget {
  TaskListItem({this.taskText});

  String taskText;

  @override
  _TaskListItemState createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskText),
      trailing: Checkbox(
          value: isChecked,
          onChanged: (checked) {
            setState(() {
              isChecked = checked;
            });
          }),
    );
  }
}
