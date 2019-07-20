import 'package:flutter_web/material.dart';

import './screens/tasks_screen.dart';

import './widgets/task_item.dart';
import './widgets/app_drawer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp - Flutter For Web',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.deepPurple  ),
      home: TasksScreen(),
    );
  }
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Center(
        child: ListView(
          children: <Widget>[
            TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),TaskItem(),
          ],
        ),
        // ),
      ),
    );
  }
}
