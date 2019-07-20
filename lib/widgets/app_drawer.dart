import 'package:flutter_web/material.dart';

import '../screens/tasks_screen.dart';
import '../screens/courses_screen.dart';
import '../screens/type_screen.dart';

// The Main Hamburget Menu of the App.

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              title: Text("Tasks"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TasksScreen()),
                );
              }),
          ListTile(
              title: Text("Courses"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoursesScreen()),
                );
              }),
          ListTile(
              title: Text("Types"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TypesScreen()),
                );
              }),
        ],
      ),
    );
  }
}
