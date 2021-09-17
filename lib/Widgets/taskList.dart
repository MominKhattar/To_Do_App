import 'package:flutter/material.dart';
import 'package:todo/Widgets/taskTile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),

      ],
    );
  }
}
