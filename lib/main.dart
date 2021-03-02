import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';
import 'screens/cartPage.dart';
import 'utils/routes.dart';
import 'widgets/theams.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        '/': (context) => LogIn(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogIn(),
        MyRoutes.cartRoute: (context) => Cart(),
      },
    );
  }
}
