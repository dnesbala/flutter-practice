import 'package:flutter/material.dart';
import 'package:flutter_practice/data/daraz_cart_items.dart';
import 'package:flutter_practice/ui/daraz_cart/daraz_cart_bottom_sheet.dart';
import 'package:flutter_practice/widgets/daraz_cart/cart_manufacturer_title.dart';
import 'package:flutter_practice/widgets/daraz_cart/product_tile.dart';

class DarazCartPage extends StatefulWidget {
  @override
  _DarazCartPageState createState() => _DarazCartPageState();
}

class _DarazCartPageState extends State<DarazCartPage> {
  static const TextStyle blackText =
      TextStyle(color: Colors.black, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("My Cart (${cartItems.length})", style: blackText),
        actions: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Delete",
              style: blackText,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          CartManufacturerTitle(manufacturerTitle: 'AS Electronics'),
          ...cartItems.map((product) {
            return ProductTile(
                imageUrl: product.imageUrl,
                price: product.price,
                title: product.title,
                subtitle: product.subtitle,
                quantity: product.quantity);
          }).toList(),
          SizedBox(height: 60),
        ],
      ),
      bottomSheet: DarazCartBottomSheet(),
    );
  }
}
