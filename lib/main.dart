// Packages
import 'package:clothesstore/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// Providers
import 'package:clothesstore/src/providers/items.dart';
import 'package:clothesstore/src/providers/searcher.dart';

// Screens
import 'package:clothesstore/src/screens/MainScreen/index.dart';

// Theme
import 'package:clothesstore/src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemsProvider()),
        ChangeNotifierProvider(create: (_) => SearcherProvider()),
      ],
      child: MaterialApp(
        title: 'Clothes Store',
        debugShowCheckedModeBanner: false,
        theme: themeLight,
        home: MainScreen(),
        routes: routes(),
      ),
    );
  }
}
