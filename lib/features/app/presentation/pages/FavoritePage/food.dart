import '../StorePage/store.dart';

class Food {
  final String name;
  final String subtitle;
  final String preview;
  final String description;
  final List<Ingredient> ingredients;
  final List<Store> stores;
  final String type;
  // ignore: non_constant_identifier_names
  final String food_type;

  const Food({
    required this.name,
    required this.subtitle,
    required this.preview,
    required this.description,
    required this.ingredients,
    required this.stores,
    required this.type,
    // ignore: non_constant_identifier_names
    required this.food_type,
  });
}

class Ingredient {
  final String name;
  final String icon;

  const Ingredient({
    required this.name,
    required this.icon,
  });
}
