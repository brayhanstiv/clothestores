// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//
import 'package:clothesstore/src/providers/navigationBar.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context);
    return BottomNavigationBar(
      currentIndex: navigationBarProvider.currentIndex,
      onTap: (i) => navigationBarProvider.currentIndex = i,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'INICIO',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'CATÁLOGO',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'FAVORITOS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'CARRITO',
        ),
      ],
    );
  }
}
