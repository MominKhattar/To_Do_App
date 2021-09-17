import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

   void checkBoxCall(bool? checkboxstate) {
    setState(() {
      isChecked = checkboxstate!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a Task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Container(
        width: 50,
        child: Checkbox(value: isChecked, onChanged:
      checkBoxCall),
      ),
    );
  }
}
