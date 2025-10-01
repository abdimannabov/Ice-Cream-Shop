// lib/data/dummy_data.dart
import '../models/ice_cream.dart';

final List<IceCream> iceCreamList = [
  IceCream(
    id: 'ic1',
    name: 'Strawberry Delight',
    description:
        'A very delicious ice-cream with fresh strawberries and pure milk!',
    imageUrl: 'assets/1.png',
    price: 8.00,
    oldPrice: 10.00,
    tags: ['Strawberry', 'Pure Milk'],
    macros: [
      Macro(title: 'Fruits', value: 30, emoji: '🍓'), // Category: Fruits
      Macro(title: 'Milk', value: 80, emoji: '🥛'),
      Macro(title: 'Sugar', value: 20, emoji: '🍬'),
    ],
  ),
  IceCream(
    id: 'ic2',
    name: 'Chocolate Dream',
    description:
        'Rich chocolate ice-cream with chocolate chips and a creamy texture.',
    imageUrl: 'assets/2.png',
    price: 9.50,
    oldPrice: 12.00,
    tags: ['Chocolate', 'Creamy'],
    macros: [
      Macro(title: 'Chocolate', value: 40, emoji: '🍫'), // Category: Chocolate (changed from 'Choco')
      Macro(title: 'Milk', value: 60, emoji: '🥛'),
      Macro(title: 'Sugar', value: 30, emoji: '🍬'),
    ],
  ),
  IceCream(
    id: 'ic3',
    name: 'Vanilla Classic',
    description:
        'The timeless classic, smooth and rich vanilla bean ice-cream.',
    imageUrl: 'assets/3.png',
    price: 7.00,
    oldPrice: 9.00,
    tags: ['Vanilla', 'Classic'],
    macros: [
      Macro(title: 'Milk', value: 90, emoji: '🥛'), // Category: Milk (changed from 'Vanilla')
      Macro(title: 'Sugar', value: 25, emoji: '🍬'),
    ],
  ),
  IceCream(
    id: 'ic4',
    name: 'Mint Chocolate Chip',
    description: 'Refreshing mint ice-cream with decadent chocolate chips.',
    imageUrl: 'assets/4.png',
    price: 8.50,
    oldPrice: null,
    tags: ['Mint', 'Chocolate'],
    macros: [
      Macro(title: 'Chocolate', value: 25, emoji: '🍫'), // Category: Chocolate (changed from 'Choco')
      Macro(title: 'Milk', value: 70, emoji: '🥛'),
      Macro(title: 'Mint', value: 15, emoji: '🍃'), // Kept mint for flavor info, but not for category.
    ],
  ),
  IceCream(
    id: 'ic5',
    name: 'Blueberry Swirl',
    description: 'Creamy ice-cream swirled with sweet and tart blueberries.',
    imageUrl: 'assets/5.png',
    price: 9.00,
    oldPrice: 11.00,
    tags: ['Blueberry', 'Fruity'],
    macros: [
      Macro(title: 'Fruits', value: 35, emoji: '🫐'), // Category: Fruits
      Macro(title: 'Milk', value: 75, emoji: '🥛'),
      Macro(title: 'Sugar', value: 22, emoji: '🍬'),
    ],
  ),
  IceCream(
    id: 'ic6',
    name: 'Coffee Crunch',
    description: 'Bold coffee flavored ice-cream with crunchy toffee bits.',
    imageUrl: 'assets/6.png',
    price: 9.25,
    oldPrice: null,
    tags: ['Coffee', 'Crunchy'],
    macros: [
      Macro(title: 'Milk', value: 70, emoji: '🥛'), // Category: Milk (changed from 'Coffee' to fit the 3 categories)
      Macro(title: 'Sugar', value: 28, emoji: '🍬'),
      Macro(title: 'Coffee', value: 20, emoji: '☕'), // Kept coffee for flavor info, but not for category.
    ],
  ),
  IceCream(
    id: 'ic7',
    name: 'Mango Tango',
    description: 'Tropical mango ice-cream with a tangy twist.',
    imageUrl: 'assets/7.png',
    price: 8.75,
    oldPrice: 10.50,
    tags: ['Mango', 'Tropical'],
    macros: [
      Macro(title: 'Fruits', value: 45, emoji: '🥭'), // Category: Fruits
      Macro(title: 'Milk', value: 55, emoji: '🥛'),
      Macro(title: 'Sugar', value: 20, emoji: '🍬'),
    ],
  ),
  IceCream(
    id: 'ic8',
    name: 'Pistachio Dream',
    description: 'Nutty pistachio ice-cream with real pistachio pieces.',
    imageUrl: 'assets/8.png',
    price: 9.75,
    oldPrice: 11.50,
    tags: ['Pistachio', 'Nutty'],
    macros: [
      Macro(title: 'Milk', value: 65, emoji: '🥛'), // Category: Milk (changed from 'Nuts' to fit the 3 categories)
      Macro(title: 'Sugar', value: 23, emoji: '🍬'),
      Macro(title: 'Nuts', value: 25, emoji: '🌰'), // Kept nuts for flavor info, but not for category.
    ],
  ),
];