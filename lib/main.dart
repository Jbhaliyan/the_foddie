import 'package:flutter/material.dart';
import 'package:the_foddie/screens/categoryMealsScreen.dart';
import 'package:the_foddie/screens/meal_detail.dart';
import 'package:the_foddie/screens/tab_screen.dart';

import 'screens/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade800,
        // primarySwatch: Colors.indigo.shade400,
        accentColor: Colors.amber.shade100,
        canvasColor: Color.fromRGBO(205, 205, 205, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: Categories(),
      routes: {
        '/': (ctx) => TabsScreen(), //to route all the unnamed routes
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      //
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(
      //     builder: (ctx) => Categories(),
      //   );
      // },

      //used when nothing is defined in route
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Categories(),
        );
      },
    );
  }
}
