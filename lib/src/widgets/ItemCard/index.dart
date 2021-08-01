// Packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Constants
import 'package:clothesstore/constants.dart';

// Models
import 'package:clothesstore/src/models/item.dart';

// Screens
import 'package:clothesstore/src/screens/ItemDetailScreen/index.dart';

// Widgets
import 'package:clothesstore/src/widgets/Stars/index.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final oCcy = new NumberFormat("#,##0", "es_CO");
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/item-detail',
        arguments: ItemDetailArguments(item),
      ),
      child: Container(
        width: size.width,
        height: size.height / 3,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Consts.kTextColor.withOpacity(0.1),
              width: 0.1,
            ),
          ),
        ),
        child: Row(
          children: [
            Image.network(
              item.thumbnail,
              width: size.width / 3,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 20.0),
            SizedBox(
              width: size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  item.salePrice == null
                      ? SizedBox.shrink()
                      : SizedBox(
                          width: size.width * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${oCcy.format(item.salePrice)}',
                                style: TextStyle(
                                  color: Consts.kTextColor.withOpacity(0.5),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                '-${(((item.price - item.salePrice) * 100) / item.price).round()}%',
                                style: TextStyle(
                                  color: Consts.kTextColor,
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                  Stars(),
                  Text(
                    '\$${oCcy.format(item.price)}',
                    style: TextStyle(
                      color: Consts.KSecondaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
