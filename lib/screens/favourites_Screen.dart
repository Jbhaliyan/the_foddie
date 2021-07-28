import 'package:flutter/material.dart';

import 'package:the_foddie/utilities/providers/meal.dart';
import 'package:the_foddie/utilities/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  // const FavouritesScreen({ Key? key }) : super(key: key);
  final List<Meal> favouriteMeals;
  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text(" You have no Favourites"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
            duration: favouriteMeals[index].duration,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
