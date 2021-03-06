import 'package:flutter/material.dart';
import 'favoritesPage.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping Cart",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text("My favorite's"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyFavoritesPage(),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
