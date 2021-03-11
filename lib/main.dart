import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';
import 'screens/cartPage.dart';
import 'screens/favoritesPage.dart';
import 'utils/routes.dart';
import 'widgets/theams.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeChangerProvider(),
        builder: (context, _) {
          return CatalogApp();
        },
      );
}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        '/': (context) => LogIn(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogIn(),
        MyRoutes.cartRoute: (context) => Cart(),
        MyRoutes.myFavoriteRoute: (context) => MyFavoritesPage(),
      },
    );
  }
}
