import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  var days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $days of Flutter ",
            style: TextStyle(color: Colors.blueAccent[100], fontSize: 20),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
