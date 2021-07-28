import 'package:flutter/material.dart';
import 'package:the_foddie/dummy_data.dart';
import 'package:the_foddie/utilities/models/category.dart';
import 'package:the_foddie/utilities/providers/meal.dart';

class Meals with ChangeNotifier {
  List<Category> _categoryItems = DUMMY_CATEGORIES;
  List<Meal> _mealsItems = DUMMY_MEALS;

  List<Meal> get mealItems {
    return [..._mealsItems]; //copy of meals
  }

  List<Category> get categoryItems {
    return _categoryItems;
  }

  Meal findById(String id) {
    return _mealsItems.firstWhere((meal) => meal.id == id);
  }

  void toggleFavourite() {
// TODO: implement favourite meals
  }
  void filters() {
// TODO: implement filters
  }
}
