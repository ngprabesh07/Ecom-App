class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 12 pro ",
      dic: "apple kop phone ho mula ",
      price: 1204675,
      color: "#33505a",
      image:
          "https://static.toiimg.com/thumb/resizemode-4,msid-78671024,imgsize-200,width-600/78671024.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String dic;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.dic,
      required this.price,
      required this.color,
      required this.image});
}
