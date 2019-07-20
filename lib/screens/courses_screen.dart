import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/course_item.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Courses'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: Center(child: CourseItem()));
  }
}
