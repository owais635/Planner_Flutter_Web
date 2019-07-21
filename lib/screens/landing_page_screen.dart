import 'package:flutter_web/material.dart';

import '../widgets/landing_page/nav_bar.dart';
import '../widgets/type_item.dart';

import '../utils/responsiveLayout.dart';
import '../utils/utils.dart';

import 'dart:html' as html;

final String PRIVACY_POLICY_URL = "https://bing.com";
final String TOS_POLICY_URL = "https://google.com";

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
            children: <Widget>[NavBar(), Body(), Footer()],
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
              SizedBox(
                  height: 400,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Homework, Agenda & Notes",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0))),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 20),
                            child: Text("Simple Homework & Notes managing app.",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),

              //get started section

              Center(
                  child: Text("Get Started",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ))),
              Center(
                  child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        html.window.open(TOS_POLICY_URL, "Web");
                      },
                      child: Text(
                        "Log into Planner for Web",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red),
                  FlatButton(
                    child: Text(
                      "Download Planner for Android",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      html.window.open(PRIVACY_POLICY_URL, "Android");
                    },
                  )
                ],
              )),

              //add some spacing
              Container(height: 30),

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
                  heading: "📚 Courses",
                  shortDesc:
                      "Add any number of courses, each with their own unique course code, and their own colors"),

              FeatureView(
                heading: "🗂️ Different Type of Tasks",
                shortDesc:
                    "There are many different types of Homework, and Planner has them!",
              ),

              // Show different Types
              Container(
                height: 70,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(types.length, (index) {
                      return TypeItem(
                          type: types[index],
                          colour: convertHexColour(typeColourHex[index]));
                    })),
              ),

              //add some spacing
              Container(height: 30),
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
        ));
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Privacy Policy"),
                onPressed: () {
                  html.window.open(PRIVACY_POLICY_URL, "Privacy Policy");
                },
              ),
              FlatButton(
                child: Text("Terms of Service"),
                onPressed: () {
                  html.window.open(TOS_POLICY_URL, "Terms of Service");
                },
              )
            ],
          ),
        ));
  }
}
