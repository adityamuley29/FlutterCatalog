import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
      child: Material(
        child: Container(
          child: Text("Welcom to 30 Day's of Flutter"),
        ),
      ),
    ));
  }
}
