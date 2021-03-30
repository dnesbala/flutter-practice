import 'package:flutter/material.dart';
import 'package:flutter_practice/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DarazCartBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.circle,
                    color: Colors.grey.shade300),
              ),
              Text("All"),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Shipping: ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "Rs. 0",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.darazOrangeColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: "Total: ",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Rs.0",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.darazOrangeColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange[600], Colors.deepOrange],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
