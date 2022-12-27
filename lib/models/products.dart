import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/mac.jpg",
    title: "Apple14",
    price: 165000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/vivo.jpg",
    title: "Vivo12",
    price: 34000,
  ),
  Product(
    image: "assets/phone.jpg",
    title: "SamsungUltra22",
    price: 18000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/oppo.jpg",
    title: "OPPO22",
    price: 14900,
    bgColor: const Color(0xFFEEEEED),
  ),
];

List<Product> demo_coupens = [
  Product(
    image: "assets/c1.jpg",
    title: "Apple14",
    price: 165000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/c2.png",
    title: "Vivo12",
    price: 34000,
  ),
  Product(
    image: "assets/c3.png",
    title: "SamsungUltra22",
    price: 18000,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/coupen.png",
    title: "OPPO22",
    price: 14900,
    bgColor: const Color(0xFFEEEEED),
  ),
];
