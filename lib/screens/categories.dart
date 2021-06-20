import 'package:flutter/material.dart';
import 'package:the_foddie/utilities/models/category.dart';
import 'package:the_foddie/dummy_data.dart';
import 'package:the_foddie/utilities/widgets/category_item.dart';

class Categories extends StatelessWidget {
  // const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: (DUMMY_CATEGORIES)
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          )
          .toList(),
    );
  }
}
