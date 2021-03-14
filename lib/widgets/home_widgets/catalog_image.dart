import 'package:flutter/material.dart';


class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(4),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).canvasColor,
        ),
        child: Image.network(
          image,
        ),
      ),
    );
  }
}
