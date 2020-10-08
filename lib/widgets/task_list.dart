import 'package:flutter/material.dart';
import 'package:todo_list_app_fluter/model/task.dart';
import 'package:todo_list_app_fluter/widgets/task_list_item.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskListItem(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].title,
            checkboxCallback: (checked) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
