import 'package:flutter/material.dart';

import '../../category_item.dart';
import '../../dummy_data.dart';
// tham khảo : https://viziondary.com/flutter/ui/widgets/layout/multi-child/lam-quen-voi-container/
// constructor
// Container(
//   {
//     Key key,
//     AlignmentGeometry alignment,             : căn chỉnh child nằm ở topLeft, topCenter, topRight, Center, CenterLeft, CenterRight, ..bottomLeft..
//     EdgeInsetsGeometry padding,              : tạo padding với child
//     Color color,                             : background cho container
//     Decoration decoration,                   : nó nằm ở dưới child (kiểu absolute tương tự vậy)
//     Decoration foregroundDecoration,         : nó nằm ở trên child nên nếu xét color đè lên color của child và decoration (nếu có)
//     double width,                            : chiều rộng của container , sét double.infinity để lấy chiều rộng bằng chiều rộng parent
//     double height,                           : chiều cao của container
//     BoxConstraints constraints,              : 
//     EdgeInsetsGeometry margin,               : margin tới các layout khác
//     Matrix4 transform,
//     Widget child,                            : child
//   }
// )
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Container'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CONTAINER
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
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, // 200 width is 300 height
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}