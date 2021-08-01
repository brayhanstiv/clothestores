// Packages
import 'package:clothesstore/src/models/item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Models
import 'package:clothesstore/src/models/items.dart';

final String _url = 'api.mercadolibre.com';

class SearcherProvider extends ChangeNotifier {
  String _query = '';
  List<Item> items = [];

  // Getters
  String get query => _query;

  // Setters
  void setQuery(String newData) {
    this._query = newData;
    notifyListeners();
  }

  void getSearchItems({
    String categoryId = 'MCO1430',
    String countryId = 'MCO',
    required BuildContext context,
  }) async {
    final Uri url = Uri.https(
      _url,
      '/sites/$countryId/search',
      {
        'q': '${this.query}',
        'category': '$categoryId',
      },
    );
    try {
      final res = await http.get(url);
      final itemsResponse = itemFromJson(res.body);
      this.items.addAll(itemsResponse.results);
      Navigator.pushNamed(context, '/found');
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
