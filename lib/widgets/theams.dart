import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,

        // Light Theam Colors below
        canvasColor: MyTheme.creamColor,
        cardColor: Colors.white,
        buttonColor: Colors.blue,
        accentColor: MyTheme.blackColor,

        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,

        // Dark Theam Colors below
        canvasColor: Color(0xff222831),
        cardColor: Color(0xff393e46),
        buttonColor: Color(0xff00adb5),
        accentColor: Color(0xffeeeeee),

        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: Theme.of(context).textTheme),
      );

  // Colors

  static Color creamColor = Color(0xffeaeaea);
  static Color redColor = Color(0xffff2e63);
  static Color blackColor = Color(0xff252a34);
  static Color blueColor = Color(0xff08d9d6);
}

// Theme Provider 

class ThemeChangerProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isDark) {
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
  }
}
