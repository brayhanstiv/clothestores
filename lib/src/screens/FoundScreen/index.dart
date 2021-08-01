// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Providers
import 'package:clothesstore/src/providers/searcher.dart';

//Widgets
import 'package:clothesstore/src/widgets/ItemCard/index.dart';

class FoundScreen extends StatelessWidget {
  const FoundScreen({Key? key}) : super(key: key);

  static final String routeName = '/found';

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearcherProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  children: [
                    TextSpan(
                        text: '${searchProvider.items.length.toString()} '),
                    TextSpan(
                        text:
                            '${searchProvider.items.length == 1 ? 'item' : 'items'} '),
                    TextSpan(
                        text:
                            '${searchProvider.items.length == 1 ? 'econtrado' : 'encontrados'} para '),
                    TextSpan(
                      text: '${searchProvider.query}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ...List.generate(
            searchProvider.items.length,
            (index) => ItemCard(
              item: searchProvider.items[index],
            ),
          ),
        ],
      ),
    );
  }
}
