import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/task_item.dart';

import './create_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tasks'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),

        //fab
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateTaskScreen()),
            );
          },
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),

        //body
        body: Center(
          child: ListView(
            children: <Widget>[
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
              TaskItem(),
            ],
          ),
          // ),
        ));
  }
}
