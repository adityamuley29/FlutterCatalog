import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text(
            "Login Page",
            style: TextStyle(color: Colors.blueAccent[100],
            fontSize: 30,
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
