import 'package:flutter/material.dart';
import 'package:my_recipie_app/models/meal.dart';
import 'package:my_recipie_app/widgets/meal_item.dart';


class FavoritesScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty){
      return Center(child: Text('You have no favorites yet - start adding some!'),);
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: favoriteMeals[index].title,
            duration: favoriteMeals[index].duration,
            imageUrl: favoriteMeals[index].imageUrl,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability,
            id: favoriteMeals[index].id,
           // removeItem: _removeMeal,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }

  }
}
