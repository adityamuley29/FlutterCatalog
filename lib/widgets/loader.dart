import 'package:flutter/material.dart';


class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: Image.asset("assets/gifs/loader.gif"),
        
      ),
    );
  }
}