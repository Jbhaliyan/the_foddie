import 'package:flutter/material.dart';
import 'package:the_foddie/dummy_data.dart';
import 'package:the_foddie/utilities/models/meal.dart';
import 'package:the_foddie/utilities/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/categoryMeals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayMeal;
  bool _loaded = false;
  @override
  void initState() {
    super.initState();

    //
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!_loaded) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayMeal = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loaded = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayMeal.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayMeal[index].id,
            title: displayMeal[index].title,
            imageUrl: displayMeal[index].imageUrl,
            affordability: displayMeal[index].affordability,
            complexity: displayMeal[index].complexity,
            duration: displayMeal[index].duration,
            removeItem: _removeMeal,
          );
        },
        itemCount: displayMeal.length,
      ),
    );
  }
}
