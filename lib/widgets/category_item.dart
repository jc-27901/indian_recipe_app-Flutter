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
              .title.copyWith(color: Colors.white),),
          decoration: BoxDecoration(
            color: const Color(0xFF000000),
            image: DecorationImage(
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.42),
                  BlendMode.dstATop
              ),
              image: NetworkImage('https://i.ibb.co/nCWPznV/271708.jpg',),fit: BoxFit.cover,
            ),
            // gradient: LinearGradient(colors: [color.withOpacity(0.8), color],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomLeft
            // ),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[700].withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(1, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      );
    }
  }

