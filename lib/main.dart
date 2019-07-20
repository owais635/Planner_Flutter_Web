import 'package:flutter_web/material.dart';

import './screens/tasks_screen.dart';

import './widgets/task_item.dart';
import './widgets/app_drawer.dart';

import './screens/landing_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp - Flutter For Web',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.deepPurple ,fontFamily: "OpenSans-Regular"  ),
      home: LandingPageScreen(),
    );
  }
}


