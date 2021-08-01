// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

// Constants
import 'package:clothesstore/constants.dart';

// Models
import 'package:clothesstore/src/models/item.dart';

// Providers
import 'package:clothesstore/src/providers/itemDetail.dart';

// Widgets
import 'package:clothesstore/src/widgets/Stars/index.dart';

class ItemDetailLayout extends StatelessWidget {
  const ItemDetailLayout({
    Key? key,
    required this.size,
    required this.item,
  }) : super(key: key);

  final Size size;
  final Item item;

  @override
  Widget build(BuildContext context) {
    final oCcy = new NumberFormat("#,##0", "es_CO");
    final itemDetailProvider = Provider.of<ItemDetailProvider>(context);
    return Stack(
      children: [
        ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.6,
                  child: Image.network(
                    item.thumbnail,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Consts.kTextColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.2,
              color: Consts.kTextColor.withOpacity(0.1),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${oCcy.format(item.price)}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Consts.KSecondaryColor,
                        ),
                      ),
                      Container(
                        width: size.width * 0.25,
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () => itemDetailProvider.increment(),
                              child: Icon(Icons.add),
                            ),
                            Text(itemDetailProvider.count.toString()),
                            InkWell(
                              onTap: () => itemDetailProvider.decrement(),
                              child: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTileWidget(
              height: size.height * 0.2,
              padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0),
              widget: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.local_shipping_outlined,
                    size: 30.0,
                    color: Colors.green,
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    width: size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detalles del producto',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Recíbelo del 22 al 26 de Julio en Medellín',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTileWidget(
              height: size.height * 0.1,
              padding: EdgeInsets.all(20.0),
              widget: Text(
                'Detalles del producto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            ListTileWidget(
              height: size.height * 0.2,
              padding: EdgeInsets.all(20.0),
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reseñas del producto',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(
                        '5.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Stars()
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 90.0,
            color: Colors.white,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                padding: EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                  color: Consts.KSecondaryColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    'Comprar Ahora',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.height,
    required this.widget,
    required this.padding,
  }) : super(key: key);

  final double height;
  final Widget widget;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.1,
            color: Colors.black,
          ),
        ),
      ),
      child: widget,
    );
  }
}
