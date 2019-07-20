import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/type_item.dart';
import '../utils.dart';

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

class TypesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Types'), centerTitle: true),
        drawer: AppDrawer(),
        body: GridView.count(
            crossAxisCount: 4,
            children: List.generate(types.length, (index) {
              return Center(
                  child: TypeItem(
                      type: types[index],
                      colour: convertHexColour(typeColourHex[index])));
            })));
  }
}
