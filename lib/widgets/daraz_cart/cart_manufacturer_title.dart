import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartManufacturerTitle extends StatelessWidget {
  final String manufacturerTitle;

  const CartManufacturerTitle({Key key, this.manufacturerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.circle, color: Colors.grey.shade300),
          ),
          Text(
            manufacturerTitle,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right_outlined,
                color: Colors.grey.shade300),
          ),
        ],
      ),
    );
  }
}
