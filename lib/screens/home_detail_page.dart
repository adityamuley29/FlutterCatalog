import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theams.dart';
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price.toString()}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: MyTheme.redColor,
                  letterSpacing: 2),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Buy",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              color: MyTheme.blueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.network(
                catalog.image,
                height: 300,
                width: 300,
              ),
            ),
            Expanded(
              child: Container(
                width: context.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Theme.of(context).canvasColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      catalog.name,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      catalog.desc,
                      style: TextStyle(
                        color: Theme.of(context).accentColor.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
