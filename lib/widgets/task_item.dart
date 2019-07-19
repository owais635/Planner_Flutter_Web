import 'package:flutter_web/material.dart';

class TaskItem extends StatelessWidget {
  final String name = 'Task Name';
  final String course = "CSC100";
  final int progress = 100;
  final String type = "Assignment";
  final String time = "12:05pm";
  final String date = "Thu., Aug 01";
  final courseColor = "#4287f5";

  static final rowPadding = EdgeInsets.only(bottom: 3, right: 4, left: 4);

  // No native way to use hex colours.
  // https://stackoverflow.com/a/53905427
  static convertHexColour(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: IntrinsicHeight(
            child: Row(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  color: convertHexColour(courseColor),
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                )),
            Expanded(
                flex: 80,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: rowPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(name),
                            Text(progress.toString() + "%"),
                          ],
                        )),
                    Padding(
                        padding: rowPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(course),
                            Text(time),
                          ],
                        )),
                    Padding(
                        padding: rowPadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(type),
                            Text(date),
                          ],
                        )),
                  ],
                ))
          ],
        )));
  }
}
