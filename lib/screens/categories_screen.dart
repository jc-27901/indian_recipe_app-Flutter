import 'package:flutter/material.dart';
import 'package:my_recipie_app/widgets/category_item.dart';
import 'package:my_recipie_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0),
        children: [
          ...DUMMY_CATEGORIES
              .map(
                (catData) =>
                    CategoryItem(catData.color, catData.title, catData.id),
              )
              .toList(),
        ],
    );
  }
}
