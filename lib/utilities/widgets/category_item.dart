import 'package:flutter/material.dart';
import 'package:the_foddie/screens/categoryMealsScreen.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({Key? key}) : super(key: key);
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.5),
                color,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
