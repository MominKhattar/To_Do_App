import 'package:flutter/material.dart';
import 'package:todo/Widgets/taskList.dart';

import 'add_task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTask());
          },
          child: Icon(
            Icons.add,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, bottom: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    maxRadius: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "To Do",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
