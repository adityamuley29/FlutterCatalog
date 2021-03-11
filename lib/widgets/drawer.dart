import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/theams.dart';
import '../screens/favoritesPage.dart';
import '../screens/cartPage.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImageUrl =
        "https://yt3.ggpht.com/ytc/AAUvwniANevzv6YK5JAqylu5yY72IeRGAiTGJY0Y2j60SQ=s900-c-k-c0x00ffffff-no-rj";
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Theme.of(context).cardColor),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Aditya Muley",
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 20),
                ),
                accountEmail: Text(
                  "adityamuley48@gmail.com",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profileImageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                // color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                // color: Colors.white,
              ),
              title: Text(
                " My Profile",
                textScaleFactor: 1.2,
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Theme.of(context).cardColor,
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                // color: Colors.white,
              ),
              title: Text(
                "My Cart",
                textScaleFactor: 1.2,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                // color: Colors.white,
              ),
              title: Text(
                "My favorite's",
                textScaleFactor: 1.2,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFavoritesPage(),
                  )),
            ),
            Divider(
              height: 20,
              thickness: 2,
              color: Theme.of(context).cardColor,
            ),
            DarkTheme(),
          ],
        ),
      ),
    );
  }
}

class DarkTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);

    return Container(
      child: ListTile(
        leading: Icon(
          Icons.brightness_4,
          // color: Colors.white,
        ),
        title: Text(
          "Dark Theme",
          textScaleFactor: 1.2,
        ),
        trailing: Switch.adaptive(
          activeColor: Theme.of(context).buttonColor,
          onChanged: (bool value) {
            final provider =
                Provider.of<ThemeChangerProvider>(context, listen: false);
            provider.toggleTheme(value);
          },
          value: themeProvider.isDarkMode,
        ),
      ),
    );
  }
}
