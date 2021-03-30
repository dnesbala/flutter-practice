import 'package:flutter/material.dart';
import 'package:flutter_practice/constants/app_colors.dart';
import 'package:flutter_practice/data/daraz_cart_items.dart';
import 'package:flutter_practice/ui/daraz_cart/daraz_cart_bottom_sheet.dart';
import 'package:flutter_practice/widgets/daraz_cart/cart_manufacturer_title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Column(
        children: [
          CartManufacturerTitle(manufacturerTitle: 'AS'),
          Divider(height: 0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.white,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.circle),
                    onPressed: () {},
                    color: Colors.grey.shade300,
                  ),
                ),
                Image.network(
                    'https://www.citysoccerpro.com/wp-content/uploads/2017/11/shirt.jpg',
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Main title goes here here here goes here",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text("Color : Red",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Rs. 2,000",
                              style: TextStyle(
                                  color: AppColors.darazOrangeColor,
                                  fontSize: 18)),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("-", style: TextStyle(fontSize: 30)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 3),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100),
                                    child: Text("1"),
                                  ),
                                  Text("+", style: TextStyle(fontSize: 18)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: DarazCartBottomSheet(),
    );
  }
}
