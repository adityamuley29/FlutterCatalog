import 'package:flutter/material.dart';
import '../theams.dart';


class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Catalog App",
            style: TextStyle(
                fontSize: 28,
                color: MyTheme.blackColor,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Trending Products",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}