import 'package:flutter_web/material.dart';

import './widgets/task_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp - Flutter For Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'RobotoMono'),
      home: MyWebsite(),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
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
