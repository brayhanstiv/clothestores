// Packages
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.share,
            size: 25.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.favorite_border_outlined,
            size: 25.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 25.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
