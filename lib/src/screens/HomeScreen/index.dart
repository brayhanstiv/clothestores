// Packages
import 'package:flutter/material.dart';

// Constants
import 'package:clothesstore/constants.dart';

// Containers
import 'package:clothesstore/src/containers/CategoriesLayout/index.dart';
import 'package:clothesstore/src/containers/FeaturedLayout/index.dart';
import 'package:clothesstore/src/containers/ForHerLayout/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'CLOTESSTORE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Consts.kTextColor,
            indicatorColor: Consts.kPrimaryColor,
            indicatorPadding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            tabs: [
              Tab(text: 'DESTACADOS'),
              Tab(text: 'CATEGORÍAS'),
              Tab(text: 'PARA ELLA')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FeaturedLayout(),
            CategoriesLayout(),
            ForHerLayout(),
          ],
        ),
      ),
    );
  }
}
