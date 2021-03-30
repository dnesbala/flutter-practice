import 'package:flutter/material.dart';
import 'package:flutter_practice/ui/daraz_cart/daraz_cart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Practice",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DarazCartPage(),
    );
  }
}
