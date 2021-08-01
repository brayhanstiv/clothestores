// Packages
import 'package:flutter/widgets.dart';

class ItemDetailProvider with ChangeNotifier {
  int _count = 1;

  // Getters
  int get count => this._count;

  // Setters
  void increment() {
    this._count++;
    notifyListeners();
  }

  void decrement() {
    this._count--;
    notifyListeners();
  }
}
