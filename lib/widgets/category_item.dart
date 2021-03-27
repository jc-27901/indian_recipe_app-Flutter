import 'package:flutter/material.dart';
import 'package:my_recipie_app/screens/category_meals_screen.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.color,this.title,this.id);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
        CategoryMealsScreen.routeName, arguments: {'id': id, 'title': title}
    );
  }

    @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme
            .of(context)
            .primaryColor,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Text(title, style: Theme
              .of(context)
              .textTheme
              .title,),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft
            ),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600].withOpacity(0.6),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
        ),
      );
    }
  }

