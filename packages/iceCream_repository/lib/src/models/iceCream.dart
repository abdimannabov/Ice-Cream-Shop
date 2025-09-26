import '../entities/entities.dart';
import 'macros.dart';

class IceCream {
  String iceCreamId;
  String picture;
  bool hasChoco;
  bool hasFruit;
  String name;
  String description;
  double price;
  double discount;
  Macros macros;

  IceCream(
      {required this.iceCreamId,
      required this.picture,
      required this.hasChoco,
      required this.hasFruit,
      required this.name,
      required this.description,
      required this.price,
      required this.discount,
      required this.macros});

  IceCreamEntity toEntity() {
    return IceCreamEntity(
        iceCreamId: iceCreamId,
        picture: picture,
        hasChoco: hasChoco,
        hasFruit: hasFruit,
        name: name,
        description: description,
        price: price,
        discount: discount,
        macros: macros);
  }

  static IceCream fromEntity(IceCreamEntity entity) {
    return IceCream(
        iceCreamId: entity.iceCreamId,
        picture: entity.picture,
        hasChoco: entity.hasChoco,
        hasFruit: entity.hasFruit,
        name: entity.name,
        description: entity.description,
        price: entity.price,
        discount: entity.discount,
        macros: entity.macros);
  }
}
