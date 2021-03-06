import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id, 
              catData.title, 
              catData.color,
              catData.url
            )
          )
          .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // max width of a item
          childAspectRatio: 3 / 2, // 200 width is 300 height
          crossAxisSpacing: 20, // space
          mainAxisSpacing: 20,
        )
      ),
    );
  }
}