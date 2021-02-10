class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "adi001",
    name: "Asus Rog Strix G",
    desc: "My First Laptop",
    price: 63000,
    color: "#000",
    image: "https://sm.mashable.com/mashable_in/photo/default/asus09_9kpd.jpg",
  )
];
