import 'package:flutter_web/material.dart';

class Task extends StatelessWidget {
  final String name = 'Task Name';
  final String course = "CSC100";
  final int progress = 100;
  final String type = "Assignment";
  final String time = "12:05pm";
  final String date = "Thu., Aug 01";

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: 
                Container(
                  color: Colors.blue,
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                )),
            Expanded(
                flex: 80,
                child: Container(
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(name),
                            Text(progress.toString()),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(course),
                            Text(time),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(type),
                            Text(date),
                          ],
                        ),
                      ],
                    )))
          ],
        )
      ],
    );
  }
}
