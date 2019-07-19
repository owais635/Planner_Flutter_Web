import 'package:flutter_web/material.dart';

class Task extends StatelessWidget {
  final String name = 'Task Name';
  final String course = "CSC100";
  final int progress = 100;
  final String type = "Assignment";
  final String time = "12:05pm";
  final String date = "Thu., Aug 01";

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: <Widget>[
          Row(
                        // mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Text(name),
              Text(progress.toString()),
            ],
          ),
          Row(
            children: <Widget>[
              Text(course),
              Text(time),
            ],
          ),
          Row(
            children: <Widget>[
              Text(type),
              Text(date),
            ],
          ),
        ],
      ),
    );
  }
}
