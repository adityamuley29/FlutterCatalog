class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Asus Rog Strix G",
      desc: "My First Laptop",
      price: 63000,
      color: "#000",
      image:
          "https://sm.mashable.com/mashable_in/photo/default/asus09_9kpd.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
