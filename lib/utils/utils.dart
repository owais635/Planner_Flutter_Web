import 'package:flutter_web/material.dart';

const types = [
  "Assignment",
  "Draw",
  "Exam",
  "Group Work",
  "Homework",
  "Lab",
  "Lesson",
  "Midterm",
  "Paper",
  "Presentation",
  "Project",
  "Quiz",
  "Reading",
  "School Work",
  "Study",
  "Test",
  "Writing",
  "Other"
];

const typeColourHex = [
  "#D32F2F",
  "#C2185B",
  "#7B1FA2",
  "#512DA8",
  "#303F9F",
  "#1976D2",
  "#0288D1",
  "#0097A7",
  "#00796B",
  "#388E3C",
  "#689F38",
  "#AFB42B",
  "#FBC02D",
  "#FFA000",
  "#F57C00",
  "#E64A19",
  "#5D4037",
  "#616161",
  "#455A64",
  "#000a12"
];

// No native way to use hex colours.
// https://stackoverflow.com/a/53905427
convertHexColour(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}
