import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImageUrl =
        "https://yt3.ggpht.com/ytc/AAUvwniANevzv6YK5JAqylu5yY72IeRGAiTGJY0Y2j60SQ=s900-c-k-c0x00ffffff-no-rj";
    return Drawer(
      child: Container(
        // color: Colors.blue[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue[400]),
                margin: EdgeInsets.zero,
                accountName: Text("Aditya Muley"),
                accountEmail: Text("adityamuley48@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profileImageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                // color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                // color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                // color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
