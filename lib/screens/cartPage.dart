import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/theams.dart';
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
        bottomNavigationBar: CartBottomNavBar());
  }
}

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(8),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$9999",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: MyTheme.redColor,
                letterSpacing: 2),
          ),
          RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Sorry...Buying is not Supported yet!",
                ),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Place Order",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            color: Theme.of(context).buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}
