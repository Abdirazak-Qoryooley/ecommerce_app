import 'package:flutter/material.dart';

class data {
  late final String image;
  late final String name;

  late final String price;

  data({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<data> getdata = [
  data(image: 'images/beats.png', name: 'beats solo3', price: '\$150'),
  data(
      image: 'images/iPhone 14 Pro.png',
      name: 'iPhone 14 Pro',
      price: '\$1000'),
  data(image: 'images/airpodsmax.png', name: 'airpods max', price: '\$100'),
  data(
      image: 'images/iPhone-14-Pro.png',
      name: 'iPhone 14 Pro',
      price: '\$1000'),
  data(
      image: 'images/JBL-Charge-5-Portable-Bluetooth.png',
      name: 'JBL-Charge-5',
      price: '\$200'),
  data(
      image: 'images/kieslect_L11_Gold.png',
      name: 'kieslect_L11_Gold',
      price: '\$300'),
];
