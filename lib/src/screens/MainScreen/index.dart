// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import 'package:clothesstore/src/providers/navigationBar.dart';

// Widgets
import 'package:clothesstore/src/widgets/BottomNavigationBar/index.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationBarProvider(),
      child: Scaffold(
        body: Body(),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context);
    return navigationBarProvider.currentPage;
  }
}
