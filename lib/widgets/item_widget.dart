import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Card(
      // color: Colors.grey[200],
      child: ListTile(
        onTap: () {
          // print("${item.name} pressed");
        },
        leading: Image.network(
          item.image,
          width: 70,
          height: 70,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "Rs. ${item.price}",
          textScaleFactor: 1.1,
          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}