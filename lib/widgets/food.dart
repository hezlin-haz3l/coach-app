import 'package:flutter/material.dart';

class Food {
  final String image, title, description;
  final int price, id;
  final Color color;

  Food ({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
});
}

List <Food> foods = [
  Food (
    id: 1,
    title: "Burrito",
    description: dummyText,
    image: "assets/images/burrito.PNG",
    color: Color(0xFF3D82AE)
  ),
  Food (
      id: 2,
      title: "Omelette In A Mug",
      description: dummyText,
      image: "assets/images/omelette.jpg",
      color: Color(0xFF3D82AE)
  ),
  Food (
      id: 3,
      title: "Peach Cobbler Oatmeal",
      description: dummyText,
      image: "assets/images/peach oatmeal.jpg",
      color: Color(0xFF3D82AE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";