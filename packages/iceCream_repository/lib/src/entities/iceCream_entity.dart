import 'package:iceCream_repository/src/entities/macros_entity.dart';
import '../models/macros.dart';

class IceCreamEntity {
  String iceCreamId;
  String picture;
  bool hasChoco;
  bool hasFruit;
  String name;
  String description;
  double price;
  double discount;
  Macros macros;

  IceCreamEntity(
      {required this.iceCreamId,
      required this.picture,
      required this.hasChoco,
      required this.hasFruit,
      required this.name,
      required this.description,
      required this.price,
      required this.discount,
      required this.macros});

  Map<String, Object?> toDocument() {
    return {
      'iceCreamId': iceCreamId,
      'picture': picture,
      'hasChoco': hasChoco,
      'hasFruit': hasFruit,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static IceCreamEntity fromDocument(Map<String, dynamic> doc) {
    return IceCreamEntity(
      iceCreamId: doc['iceCreamId'],
      picture: doc['picture'],
      hasChoco: doc['hasChoco'],
      hasFruit: doc['hasFruit'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'],
      discount: doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])),
    );
  }
}
