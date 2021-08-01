# Tienda ClothesStore

A boilerplate project created in flutter using MobX and Provider. Boilerplate supports both web and mobile, clone the appropriate branches mentioned below:

* Para Móvil: https://github.com/brayhanstiv/clothestores/tree/master (canal estable)

## Getting Started

ClothesStores es una plataforma básica que consume la api de marcado libre para plasmar sus productos, contiene vistas importantes como el home donde se plasman todos los productos relacionados con ropa y accesorios, product detail para visuallizar detalles de cada producto y una vista de búsqueda sencilla para para éstos mismos productos

https://github.com/brayhanstiv/clothestores/blob/master/assets/img/feature_1.png

## How to Use

**Step 1:**

Descargar o clonar este respositorio usando este link:

```
https://github.com/brayhanstiv/clothestores.git
```

**Step 2:**

Vaya a la raíz del proyecto y ejecute el siguiente comando en la consola para obtener las dependencias necesarias:

```
flutter clean
```
```
flutter pub get
```

**Step 3:**

Ejecutar el comando para mantener el código fuente sincronizado automáticamente:

```
flutter pub run build_runner build
```

## ClothesStore Características:

* Rutas
* Http (para el consumo de APIs)
* Provider (State Management)
* Intl

### Folder Structure
Aquí está la estructura de carpetas que nos proporciona flutter.

```
clothesstore/
|- android
|- build
|- ios
|- lib
|- test
```

Aquí está la estructura de carpetas que hemos estado usando en este proyecto.

```
lib/
|- containers/
|- models/
|- providers/
|- screens/
|- theme/
|- widgets/
|- constants.dart
|- main.dart
|- routes.dart
```

### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
containers/
|- app_theme.dart
|- dimens.dart
|- endpoints.dart
|- preferences.dart
|- strings.dart
```

### Data

All the business logic of your application will go into this directory, it represents the data layer of your application. It is sub-divided into three directories `local`, `network` and `sharedperf`, each containing the domain specific logic. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central repository.

```
data/
|- local/
    |- constants/
    |- datasources/
    |- app_database.dart
   
|- network/
    |- constants/
    |- exceptions/
    |- rest_client.dart
    
|- sharedpref
    |- constants/
    |- shared_preference_helper.dart
    
|- repository.dart

```

### Stores

The store is where all your application state lives in flutter. The Store is basically a widget that stands at the top of the widget tree and passes it's data down using special methods. In-case of multiple stores, a separate folder for each store is created as shown in the example below:

```
stores/
|- login/
    |- login_store.dart
    |- form_validator.dart
```

### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
ui/
|- login
   |- login_screen.dart
   |- widgets
      |- login_form.dart
      |- login_button.dart
```

### Utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows: 

```
utils/
|- encryption
   |- xxtea.dart
|- date
  |- date_time.dart
```

### Widgets

Contains the common widgets that are shared across multiple screens. For example, Button, TextField etc.

```
widgets/
|- app_icon_widget.dart
|- empty_app_bar.dart
|- progress_indicator.dart
```

### Routes

This file contains all the routes for your application.

```dart
import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
```

### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:boilerplate/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/app_theme.dart';
import 'constants/strings.dart';
import 'ui/splash/splash.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      routes: Routes.routes,
      home: SplashScreen(),
    );
  }
}
```

## Wiki

Checkout [wiki](https://github.com/zubairehman/flutter-boilerplate-project/wiki) for more info

## Conclusion

I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the boilerplate then please feel free to submit an issue and/or pull request 🙂

Again to note, this is example can appear as over-architectured for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.

