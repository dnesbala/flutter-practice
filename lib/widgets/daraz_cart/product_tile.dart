import 'package:flutter/material.dart';
import 'package:flutter_practice/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final int price;
  final int quantity;

  const ProductTile(
      {Key key,
      this.imageUrl,
      this.title,
      this.subtitle,
      this.price,
      this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.only(bottom: 5),
      color: Colors.white,
      height: 110,
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
          Image.network(imageUrl, height: 90, width: 90, fit: BoxFit.contain),
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
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    Text("Rs. $price",
                        style: TextStyle(
                            color: AppColors.darazOrangeColor, fontSize: 18)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("-", style: TextStyle(fontSize: 30)),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade100),
                              child: Text(quantity.toString()),
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
    );
  }
}
