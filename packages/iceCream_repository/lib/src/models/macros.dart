import '../entities/macros_entity.dart';

class Macros {
  int milk;
  int chocolate;
  int fruits;

  Macros({required this.milk, required this.chocolate, required this.fruits});

  MacrosEntity toEntity(){
    return MacrosEntity(
      milk : milk,
      chocolate : chocolate,
      fruits : fruits,
    );
  }

  static Macros fromEntity(MacrosEntity entity){
    return Macros(
      milk : entity.milk,
      chocolate : entity.chocolate,
      fruits : entity.fruits,
    );
  }
}
