import 'package:flutter/material.dart';

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
      ),
    );
  }
}
