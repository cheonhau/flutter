import 'package:flutter/material.dart';

import '../../category_item.dart';
import '../../dummy_data.dart';

// constructor 
// const Text(
//   String data,
//   {
//     Key key,
//     TextStyle style,
//     StrutStyle strutStyle,
//     TextAlign textAlign,
//     TextDirection textDirection,
//     Locale locale,
//     TextOverflow textOverflow,
//     double textScaleFactor,
//     int maxlines,
//     String semanticsLable,
//     TextWidthBasis textWidthBasis,
//   }
// );

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_TEXT
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