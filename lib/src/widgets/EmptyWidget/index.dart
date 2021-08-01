// Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWidget extends StatelessWidget {
  final String image;
  final String text;
  final double? width;
  const EmptyWidget({
    Key? key,
    required this.image,
    required this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          width: width == null ? size.width * 0.4 : width,
        ),
        Container(
          width: width == null ? size.width * 0.4 : width,
          margin: EdgeInsets.only(top: 20.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
