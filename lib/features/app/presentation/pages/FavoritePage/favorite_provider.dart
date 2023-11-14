import 'package:flutter/material.dart';

import 'food.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Food> _favFoods = [];
  List<Food> get favFoods => _favFoods;

  void toggleFav(Food favFood) {
    if (isExist(favFood)) {
      _favFoods.remove(favFood);
    } else {
      _favFoods.add(favFood);
    }
    notifyListeners();
  }

  bool isExist(Food favFood) {
    return _favFoods.contains(favFood);
  }
}
