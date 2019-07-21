import 'package:flutter_web/material.dart';

import '../utils/utils.dart';

class CourseItem extends StatelessWidget {
  static final String courseName = "Intro to Computer Sceience";
  static final String courseCode = "CSC100";
  static final String courseColour = "#4287f5";

  @override
  Widget build(BuildContext context) {
    return Card(
      color: convertHexColour(courseColour),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(courseName),
              Text(courseCode),
              // Expanded(
              // child:
              Container(
                color: convertHexColour(courseColour),
                padding: const EdgeInsets.symmetric(vertical: 1),
              )
              // )
            ],
          )),
    );
  }
}
