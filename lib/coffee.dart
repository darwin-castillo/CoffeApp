import 'dart:math';

import 'package:flutter/foundation.dart';

final _doubleInRange = (Random source, num start, num end) =>
    source.nextDouble() * (end - start) + start;
final random = Random();
final coffees = List.generate(
    _names.length,
    (index) => Coffee(
        name: _names[index],
        image: "assets/images/${index + 1}.png",
        price: _doubleInRange(random, 3, 7)));

class Coffee {
  String name;
  String image;
  double price;

  Coffee({
    @required this.name,
    @required this.image,
    @required this.price,
  });
}

final _names = [
  'Acaramelado Frio',
  'Mocka Helado',
  'Latte Caramelizado',
  'Toffee Nut Latte',
  'Capuccino',
  'Latte Frio',
  'Americano',
  'Macciato Caramelo',
  'Café Frio Vietnamise',
  'Black Tea Latte',
  'Café Irlandés Clásico',
  'Crunch Latte'
];
