import 'package:flutter_class_demo/models/district.dart';

class Hotel {
  String name;
  String imageUrl;
  District district;
  int rating;

  Hotel(this.name, this.imageUrl, this.district, [this.rating = 1]);

  static List<Hotel> hotels = [
    Hotel(
      'Marriott Hotel',
      'assets/images/marriott.jpeg',
      District("Nyarugenge"),
      5,
    ),
    Hotel(
      'Cleo Lake Kivu Hotel',
      'assets/images/cleo.jpeg',
      District("Karongi"),
      4,
    ),
    Hotel(
      'Serena Hotel Rubavu',
      'assets/images/serena_rubavu.jpeg',
      District("Rubavu"),
      5,
    ),
    Hotel(
      'Hotel de Mille Collines',
      'assets/images/mille_collines.jpeg',
      District("Nyarugenge"),
      4,
    ),
    Hotel(
      'Radisson Blue Hotel',
      'assets/images/radisson.jpeg',
      District("Gasabo"),
      5,
    ),
    Hotel(
      'Bisate Lodge',
      'assets/images/bisate.jpeg',
      District("Musanze"),
      4,
    ),
    Hotel(
      'Legacy Hotel',
      'assets/images/legacy.jpeg',
      District("Gasabo"),
      3,
    ),
  ];
}
