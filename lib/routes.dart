// Packages
import 'package:clothesstore/src/screens/FoundScreen/index.dart';
import 'package:flutter/material.dart';

// Routes
import 'package:clothesstore/src/screens/ItemDetailScreen/index.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    ItemDetailScreen.routeName: (BuildContext context) => ItemDetailScreen(),
    FoundScreen.routeName: (BuildContext context) => FoundScreen(),
  };
}
