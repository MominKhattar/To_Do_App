import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack});

  // void checkBoxCall(bool? checkboxstate) {
  //   setState(() {
  //     isChecked = checkboxstate!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Container(
        width: 50,
        child: Checkbox(
          value: isChecked,
          onChanged: checkboxCallBack ,
          //     onChanged:
          // checkBoxCall
          // ),
        ),
      ),
    );
  }
}
