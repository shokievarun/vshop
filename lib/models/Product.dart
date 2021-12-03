import 'package:flutter/material.dart';

class Product {
  final int id;
  final int quantity;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.quantity,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/organicbag.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Prithvi organic potting soil",
    price: 29.99,
    description:
        "A form of protective gear worn to protect the head. More specifically, a helmet complements the skull in protecting the human brain.",
    rating: 4.3,
    isPopular: true,
    quantity: 9,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/organicbag.png",
      "assets/images/organicbag.png",
      "assets/images/organicbag.png",
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Prithvi organic potting soil",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    quantity:5,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/organicbag.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Prithvi organic potting soil",
    price: 250.00,
    description: "A very nice shoes with attractive colors",
    rating: 4.5,
    isFavourite: false,
    quantity:10,

  ),
  Product(
    id: 3,
    images: [
      "assets/images/organicbag.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Prithvi organic potting soil",
    price: 250.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    quantity:12,

  ),
  Product(
    id: 4,
    images: [
      "assets/images/organicbag.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Prithvi organic potting soil",
    price: 250.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
    quantity:100,

  ),
];

const String description =
    "Wireless Controller for PS4™ givs you what you want in your gaming from over precision control your games to sharing …";
