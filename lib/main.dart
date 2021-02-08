import 'package:flutter/material.dart';
import 'homePage.dart';
import 'loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light,
      fontFamily: GoogleFonts.lato().fontFamily ),
      initialRoute: "/",
      routes: {
        '/': (context) => LogIn(),
        '/home': (context) => HomePage(),
        '/login': (context) => LogIn(),
      },
    );
  }
}
