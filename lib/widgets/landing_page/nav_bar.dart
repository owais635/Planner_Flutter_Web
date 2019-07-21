import 'package:flutter_web/material.dart';

// import 'dart:html' as html;
// FlatButton(child: Text("click me"), onPressed: (){html.window.open("https://www.google.com","google");},)

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.network(
                "assets/images/logo.png",
                height: 40,
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text("Planner", style: TextStyle(fontSize: 35))
            ],
          ),
          InkWell(
              child: Container(
            margin: EdgeInsets.only(left: 20),
            width: 80,
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
          )),
        ],
      ),
    );
  }
}
