// Packages
import 'package:clothesstore/src/models/item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Models
import 'package:clothesstore/src/models/items.dart';

final String _url = 'api.mercadolibre.com';

class ItemsProvider extends ChangeNotifier {
  List<Item> items = [];

  ItemsProvider() {
    _getMainItems();
  }

  _getMainItems({
    String categoryId = 'MCO1430',
    String countryId = 'MCO',
  }) async {
    final Uri url = Uri.https(
      _url,
      '/sites/$countryId/search',
      {'category': '$categoryId'},
    );
    try {
      final res = await http.get(url);
      final itemsResponse = itemFromJson(res.body);
      this.items.clear();
      this.items.addAll(itemsResponse.results);
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
