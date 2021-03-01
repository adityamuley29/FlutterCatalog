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
      // backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        // backgroundColor: MyTheme.creamColor,
        centerTitle: true,
        title: Text(
          catalog.name,
          style: TextStyle(
            color: MyTheme.blackColor,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        color: MyTheme.blackColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price.toString()}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Buy",
                style: TextStyle(fontSize: 16),
              ),
              color: MyTheme.redColor,
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
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: MyTheme.blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
