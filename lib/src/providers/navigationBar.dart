// Packages
import 'package:flutter/widgets.dart';

// Widgets
import 'package:clothesstore/src/screens/HomeScreen/index.dart';
import 'package:clothesstore/src/screens/SearchScreen/index.dart';
import 'package:clothesstore/src/screens/CartScreen/index.dart';
import 'package:clothesstore/src/screens/FavoritesScreen/index.dart';

class NavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  // Pages
  List _pages = [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    CartScreen(),
  ];

  // Getters
  int get currentIndex => this._currentIndex;
  Widget get currentPage => _pages[_currentIndex];

  // Setters
  set currentIndex(int newData) {
    this._currentIndex = newData;
    notifyListeners();
  }
}
