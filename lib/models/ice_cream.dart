class Macro {
  final String title;
  final int value;
  final String emoji;

  Macro({required this.title, required this.value, required this.emoji});
}

class IceCream {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final double? oldPrice; 
  final List<String> tags;
  final List<Macro> macros;

  IceCream({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.oldPrice,
    required this.tags,
    required this.macros,
  });

  String get category {
    final List<String> categoryKeywords = ['Chocolate', 'Milk', 'Fruits'];

    for (final macro in macros) {
      if (categoryKeywords.contains(macro.title)) {
        return macro.title; 
      }
    }

    for (final tag in tags) {
      if (tag.toLowerCase().contains('strawberry') ||
          tag.toLowerCase().contains('blueberry') ||
          tag.toLowerCase().contains('mango')) {
        return 'Fruits';
      }
      if (tag.toLowerCase().contains('chocolate')) {
        return 'Chocolate';
      }
      if (tag.toLowerCase().contains('milk') ||
          tag.toLowerCase().contains('cream') ||
          tag.toLowerCase().contains('vanilla') ||
          tag.toLowerCase().contains('pistachio') ||
          tag.toLowerCase().contains('coffee')) {
        return 'Milk'; 
      }
    }

    return 'Other';
  }
}
