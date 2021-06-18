import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  // const MealDetailScreen({ Key? key }) : super(key: key);
  static const routeName = '/meal_detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Center(
        child: Text('Meal Detail - $mealId'),
      ),
    );
  }
}
