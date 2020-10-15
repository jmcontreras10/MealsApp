import 'package:flutter/material.dart';
import 'dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTittle;

  //CategoryMealScreen(this.categoryId, this.categoryTittle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTittle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTittle),
      ),
      body: ListView.builder(
        itemBuilder: (cxt, index) {
          return Text(
            categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
