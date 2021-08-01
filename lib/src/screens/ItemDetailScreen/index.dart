// Packages
import 'package:clothesstore/src/providers/itemDetail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Containers
import 'package:clothesstore/src/containers/ItemDetailLayout/index.dart';

// Models
import 'package:clothesstore/src/models/item.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({Key? key}) : super(key: key);

  static final String routeName = '/item-detail';

  @override
  Widget build(BuildContext context) {
    ItemDetailArguments args =
        ModalRoute.of(context)?.settings.arguments as ItemDetailArguments;
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => ItemDetailProvider(),
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: ItemDetailLayout(
          size: size,
          item: args.item,
        ),
      ),
    );
  }
}

class ItemDetailArguments {
  final Item item;

  ItemDetailArguments(this.item);
}
