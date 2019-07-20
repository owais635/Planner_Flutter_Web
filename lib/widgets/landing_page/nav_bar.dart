import 'package:flutter_web/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              //icon

              // SizedBox(
              //   width: 100,
              // ),

              Text("Planner",
                  style:
                      TextStyle(fontSize: 30))
            ],
          ),
          InkWell(
              child: Container(
            margin: EdgeInsets.only(left: 20),
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        // letterSpacing: 1,
                      )),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
