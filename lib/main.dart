import 'package:flutter/material.dart';
import 'homePage.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: "/home",
      routes: {
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LogIn(),
      },
    );
  }
}
