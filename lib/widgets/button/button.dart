import 'package:flutter/material.dart';

import '../../category_item.dart';
import '../../dummy_data.dart';
// tham khảo : 
// https://viblo.asia/p/flutter-button-series-floatingactionbutton-1VgZv1dpKAw
// button mình thường dùng 3 loại 
// 1 : button phẳng -> FlatButton, 2 : button nổi -> RaisedButton, 3 : button xổ xuống -> DropdownButton 
// chúng thường có các thuộc tính như sau 
// FloatingActionButton({
//   backgroundColor,           : hoặc color : màu của button
//   child,                     : cho phép định nghĩa con bên trong nó
//   focusColor,                : màu sắc khi focus
//   foregroundColor,           : hoặc textColor : xác định icon và màu sắc bên trong butotn
//   hoverColor,                : màu sắc khi hover
//   MaterialTapTargetSize,     : cấu hình kích thước khi tap vào button
//   onpressed,                 : hành động khi nhấn, khi null nó sẽ ở trạng thái disabled, 
//   tooltip,                   : hành động khi nhấn giữ button 
// })
class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Container'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_BUTTON
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