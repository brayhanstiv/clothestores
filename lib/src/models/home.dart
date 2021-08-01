class Home {
  String image, text;
  Home({
    required this.image,
    required this.text,
  });
}

final home = <Home>[
  Home(
    image: 'assets/img/home_1.jpg',
    text: 'ROPA INFANTIL',
  ),
  Home(
    image: 'assets/img/home_2.jpg',
    text: 'ROPA PARA DAMA',
  ),
  Home(
    image: 'assets/img/home_3.jpg',
    text: 'ROPA PARA CABALLERO',
  ),
];
