
import 'dart:ui';

class Items {
  String name;
  String price;
  String image;
  bool fav;

  Items({
    required this.name,
    required this.price,
    required this.image,
    this.fav = false
  });
}




   List<Items> foods=[

  Items(name: "Beaf Burger", price: "7.5\$", image: "assets/images/photo_2024-04-20_01-12-36.jpg"),
  Items(name: "Spicy Shrimp", price: "8\$", image: "assets/images/photo_2024-04-20_01-12-48.jpg"),
  Items(name: "Crispy Zinger", price: "10\$", image: "assets/images/photo_2024-04-20_01-12-46.jpg"),
  Items(name: "Meat Shawerma", price: "11.5\$", image: "assets/images/photo_2024-04-20_03-29-41.jpg"),
  Items(name: "Pizza", price: "5\$", image: "assets/images/photo_2024-04-20_01-12-44.jpg"),
  
];