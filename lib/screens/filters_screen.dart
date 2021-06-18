import 'package:flutter/material.dart';
import 'package:the_foddie/utilities/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  // const FilterScreen({ Key? key }) : super(key: key);
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),
      drawer: MainDrawer(),
      body: Text('Filter Meals!!'),
    );
  }
}
