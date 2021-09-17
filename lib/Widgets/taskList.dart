import 'package:flutter/material.dart';
import 'package:todo/Widgets/taskTile.dart';
import 'package:todo/models/task.dart';

class TaskList extends StatefulWidget {


  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Oranges"),
    Task(name: "Buy Car"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
          isChecked: tasks[index].isDone, taskTitle: tasks[index].name
      ,
      checkboxCallBack : (checkboxstate) {
            setState(() {
              tasks[index].toggledone();
            });
          });

    },
      itemCount: tasks.length,
    );
  }
}
