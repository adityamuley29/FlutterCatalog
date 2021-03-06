import 'package:flutter/material.dart';


class MyFavoritesPage extends StatelessWidget {
  const MyFavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My favorite's Items",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
      ),
    );
  }
}
