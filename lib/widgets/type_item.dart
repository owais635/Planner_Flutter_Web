import 'package:flutter_web/material.dart';

class TypeItem extends StatelessWidget {
  final String type;
  final Color colour;

  TypeItem({this.type, this.colour});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: colour,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(type,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ))));
  }
}
