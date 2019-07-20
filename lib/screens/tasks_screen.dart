import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/task_item.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tasks'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
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
