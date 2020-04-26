// document : https://medium.com/flutter-community/a-deep-dive-into-stack-in-flutter-3264619b3a77
import 'package:flutter/material.dart';
import '../../category_item.dart';
import '../../dummy_data.dart';
// stack hay được dùng trong các trường hợp chồng các layout lên nhau, kiểu absolute trong css vậy,
// layout khai báo sau sẽ đè lên layout khai bao trước đó.
// thường dùng align hoặc positioned để xác định vị trí cho layout, positioned thì hay dùng hơn vì nó xác định tốt chính xác vị trí
class StackWidget extends StatelessWidget {
  const StackWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Container'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_STACK
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