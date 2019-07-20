import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/course_item.dart';

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

class CreateTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Task'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
                child: ListView(children: <Widget>[
              //Task Name
              TextFormField(
                  decoration: const InputDecoration(
                hintText: 'Task Name',
                labelText: 'Name',
              )),

              //Course
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Course"),
                  DropdownButton<String>(
                    value: 'One',
                    onChanged: (String newValue) {},
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),

              // Task Type
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Type"),
                  DropdownButton<String>(
                    value: 'Test',
                    onChanged: (String newValue) {},
                    items: types.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),

              //Due Date
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Due Date"),
                    Text("Sat. Jul 20"),
                    Text("3:21 AM")
                  ]),

              //Progress Slider
              Slider(
                max: 100,
                min: 0,
                value: 20,
                onChanged: (value) {},
              ),

              //Notes
              TextFormField(
                  maxLines: null,
                  decoration: const InputDecoration(
                    hintText: 'Notes',
                    labelText: 'Notes',
                  )),
            ]))));
  }
}

// Column(
//           children: <Widget>[
//             Row(children: <Widget>[Text("Name")]),
//             Row(children: <Widget>[Text("Course")]),
//             Row(children: <Widget>[Text("Type")]),
//             Row(children: <Widget>[Text("Due Date")]),
//             Row(children: <Widget>[Text("Progress")]),
//           ],
//         )
