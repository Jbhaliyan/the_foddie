import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:the_foddie/utilities/providers/meals_provider.dart';
import 'package:the_foddie/utilities/widgets/category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealData = Provider.of<Meals>(context, listen: false);
    // final meals = mealData.mealItems;
    final category = mealData.categoryItems;

    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: category.length,
      itemBuilder: (ctx, i) =>
          CategoryItem(category[i].id, category[i].title, category[i].color),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      // children: meals
      //     .map(
      //       (catData) => CategoryItem(
      //         catData.id,
      //         catData.title,
      //         catData.color,
      //       ),
      //     )
      //     .toList(),
    );
  }
}
