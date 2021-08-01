// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Constants
import 'package:clothesstore/constants.dart';

// Models
import 'package:clothesstore/src/models/feature.dart';

// Providers
import 'package:clothesstore/src/providers/searcher.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: [
          Container(
            height: size.height * 0.15,
            color: Consts.kTextColor.withOpacity(0.2),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buscar',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Consumer<SearcherProvider>(
                  builder: (context, searchProvider, _) => TextFormField(
                    initialValue: '',
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (text) => searchProvider.setQuery(text),
                    onEditingComplete: () =>
                        searchProvider.getSearchItems(context: context),
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(
            features.length,
            (index) => Container(
              width: size.width,
              height: size.height * 0.2,
              padding: EdgeInsets.only(top: 20.0),
              child: Image.asset(
                features[index].image,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
