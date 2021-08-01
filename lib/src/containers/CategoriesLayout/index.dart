// Packages
import 'package:flutter/material.dart';

// Widgets
import 'package:clothesstore/src/widgets/EmptyWidget/index.dart';

class CategoriesLayout extends StatelessWidget {
  const CategoriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyWidget(
      image: 'assets/icons/cono.svg',
      text: 'ESTA SECCIÓN ESTÁ EN CONSTRUCCIÓN, ESPÉRALA PRONTO!',
    );
  }
}
