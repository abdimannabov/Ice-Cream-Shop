class MacrosEntity {
  int milk;
  int chocolate;
  int fruits;

  MacrosEntity(
      {required this.milk, required this.chocolate, required this.fruits});

  Map<String, Object?> toDocument() {
    return {
      'milk': milk,
      'chocolate': chocolate,
      'fruits': fruits,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      milk: doc['milk'],
      chocolate: doc['chocolate'],
      fruits: doc['fruits'],
    );
  }
}
