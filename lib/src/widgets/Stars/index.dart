// Packages
import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
