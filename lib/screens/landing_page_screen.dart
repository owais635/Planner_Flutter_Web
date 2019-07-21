import 'package:flutter_web/material.dart';

import '../widgets/landing_page/nav_bar.dart';

import '../utils/responsiveLayout.dart';
import '../utils/utils.dart';

import '../widgets/type_item.dart';
import '../widgets/course_item.dart';

class LandingPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      // smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //     height: 600,
              //     child: Stack(
              //       fit: StackFit.expand,
              //       children: <Widget>[
              //         FractionallySizedBox(
              //           alignment: Alignment.centerLeft,
              //           widthFactor: .6,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: <Widget>[
              //               Text("Homework, Agenda & Notes",
              //                   style: TextStyle(
              //                       fontSize: 60,
              //                       fontWeight: FontWeight.bold,
              //                       fontFamily: "Montserrat-Regular",
              //                       color: Color(0xFF8591B0))),
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 12.0, top: 20),
              //                 child: Text("Simple Homework & Notes managing app.",
              //                     style: TextStyle(
              //                       fontSize: 24,
              //                       fontWeight: FontWeight.bold,
              //                     )),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     )),

              //features

              FeatureView(
                heading: "✏️ Subtasks",
                shortDesc:
                    "Break your assignment into several subtasks and track your progress more accurately. As you complete these subtasks, your overall progress will increase.",
              ),

              FeatureView(
                  heading: " 🗒️️ Notes",
                  shortDesc:
                      "Quickly Create and Capture Unlimited number of Notes, and further customize them by picking any of the colours provided. Later when you’re done with them you can achieve them for later-viewing."),

              FeatureView(
                  heading: "Courses",
                  shortDesc:
                      "Add any number of courses, each with their own unique course code, and their own colors"),

              FeatureView(
                heading: "📖 Different Type of Tasks",
                shortDesc:
                    "There are many different types of Homework, and Planner has them!",
              ),

              Container(
                height: 70,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(types.length, (index) {
                      return TypeItem(
                          type: types[index],
                          colour: convertHexColour(typeColourHex[index]));
                    })),
              )
            ]));
  }
}

class FeatureView extends StatelessWidget {
  final String heading;
  final String shortDesc;
  final String example;

  FeatureView({this.heading, this.shortDesc, this.example});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(heading,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(shortDesc, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
