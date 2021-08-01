// Packages
import 'package:flutter/material.dart';

// Constants
import 'package:clothesstore/constants.dart';

// Models
import 'package:clothesstore/src/models/home.dart';

// Providers
import 'package:clothesstore/src/providers/items.dart';

// Widgets
import 'package:clothesstore/src/widgets/ImageCard/index.dart';
import 'package:clothesstore/src/widgets/ItemCard/index.dart';
import 'package:provider/provider.dart';

class FeaturedLayout extends StatelessWidget {
  const FeaturedLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final itemsProvider = Provider.of<ItemsProvider>(context);
    return ListView(
      children: [
        Image.asset(
          'assets/img/sale.jpg',
          width: size.width,
          height: size.height / 2,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: size.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: home.length,
            itemBuilder: (context, index) {
              return ImageCard(
                size: size,
                image: home[index].image,
                text: home[index].text,
              );
            },
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: Consts.kDefaultPadding,
            ),
            child: Text(
              'PRODUCTOS MÁS BUSCADOS',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        ...List.generate(
          itemsProvider.items.length,
          (index) => ItemCard(
            item: itemsProvider.items[index],
          ),
        ),
      ],
    );
  }
}
