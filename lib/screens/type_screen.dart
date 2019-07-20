import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';

class TypesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Types'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: Text("Types Comming Soon........."));
  }
}
