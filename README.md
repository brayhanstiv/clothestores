# Tienda ClothesStore

La tienda clothes store es un proyecto creado en Flutter usando Provider como manejo de estados. Clothes Store es compatible para la mócil, clona las ramas apropiadas que se mencionan a continuación:

* Para Móvil: https://github.com/brayhanstiv/clothestores/tree/master (canal estable)

## Getting Started

ClothesStores es una plataforma básica que consume la api de mercado libre para plasmar sus productos, contiene vistas importantes como el home donde se visualizan todos los productos relacionados con ropa y accesorios, product detail para visualizar los detalles de cada producto y una vista de búsqueda sencilla para para éstos mismos productos

![alt text](https://github.com/brayhanstiv/clothestores/blob/master/assets/img/view_1.jpeg)
![alt text](https://github.com/brayhanstiv/clothestores/blob/master/assets/img/view_2.jpeg)
![alt text](https://github.com/brayhanstiv/clothestores/blob/master/assets/img/view_3.jpeg)
![alt text](https://github.com/brayhanstiv/clothestores/blob/master/assets/img/view_4.jpeg)

## Como usarlo

**Paso 1:**

Descargar o clonar este respositorio usando este link:

```
https://github.com/brayhanstiv/clothestores.git
```

**Paso 2:**

Vaya a la raíz del proyecto y ejecute el siguiente comando en la consola para obtener las dependencias necesarias:

```
flutter clean
```
```
flutter pub get
```

**Paso 3:**

Ejecutar el comando para mantener el código fuente sincronizado automáticamente:

```
flutter pub run build_runner build
```

**Paso 4:**

En caso de ejecutar pruebas puede realizarlo con el comando:

```
flutter test
```

O en caso de querer ejecutar pruebas para un solo archivo puede hacerlo con el comando:


```
flutter test test/widget_test.dart
```
## ClothesStore Características:

* Rutas
* Http (para el consumo de APIs)
* Provider (State Management)
* Intl

### Folder Structure
Ésta es la estructura de carpetas que nos proporciona flutter.

```
clothesstore/
|- android
|- assets
|- build
|- ios
|- lib
|- test
```

Ésta es la estructura de carpetas que hemos estado usando en este proyecto.

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

### Containers

Este directorio contiene todos los diseños de la aplicación. cada carpeta contiene un archivo index.dart para cada tipo de diseño como se muestra a continuación:

```
containers/
|- CategoriesLayout/
    |- index.dart
|- FeaturedLayout/
|- ForHerLayout/
|- ItemDetailLayout/
```

### Models

Este directorio contiene toda la estructura de los datos del proyecto, ya sean datos internos de la app como datos externos consumidos por ejemplo, de una api:

```
models/
|- feature.dart
|- home.dart
|- item.dart
|- items.dart

```

### Providers

Este directorio contiene los archivos para el manejo de estados de la aplicación:

```
providers/
|- itemDetail.dart
|- items.dart
|- navigationBar.dart
|- searcher.dart
```

### Screens

Este directorio contiene toda la interfaz de usuario de su aplicación. Cada pantalla se encuentra en una carpeta separada, lo que facilita la combinación de grupos de archivos relacionados con esa pantalla en particular. Todos los widgets específicos de la pantalla se colocarán en el directorio `widgets` como se muestra en el siguiente ejemplo:

```
screens/
|- CartScreen/
   |- index.dart
|- FavoritesScreen/
|- FoundScreen/
|- HomeScreen/
|- ItemDetailScreen/
|- MainScreen/
|- SearchScreen/
```

### Widgets

Contiene los widgets comunes que se comparten en varias pantallas. Por ejemplo, BottomNavigationBar, ItemCard, etc.

```
widgets/
|- AppBar
    |-index.dart
|- BottomNavigationBar
|- EmptyWidget
|- ImageCard
|- ItemCard
|- Stars
```

### routes

Este archivo contiene todas las rutas para su aplicación.

```dart
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
```

### Main

Este es el punto de partida de la aplicación. Todas las configuraciones de nivel de aplicación se definen en este archivo, es decir, tema, rutas, título, orientación, etc.

```dart
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
```

## Conclusion

Estaré encantado de responder cualquier pregunta que pueda tener sobre este proyecto, no dude en enviar un problema y/o una solicitud de extracción🙂

Una vez más, tenga en cuenta que este ejemplo puede parecer como sobrearquitecturado por lo que es, pero es solo un ejemplo. Si te gustó mi trabajo, no olvides ⭐ destacar el repositorio para mostrar tu apoyo.

