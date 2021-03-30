import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String title;
  Color color;
  int price;
  int quantity;
  String shopName;

  Product({
    @required this.imageUrl,
    @required this.title,
    this.color,
    @required this.price,
    @required this.quantity,
    @required this.shopName,
  });

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'title': title,
      'color': color.value,
      'price': price,
      'quantity': quantity,
      'shopName': shopName,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      imageUrl: map['imageUrl'],
      title: map['title'],
      color: Color(map['color']),
      price: map['price'],
      quantity: map['quantity'],
      shopName: map['shopName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
