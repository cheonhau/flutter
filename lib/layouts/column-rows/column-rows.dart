// row và column là sự sắp đặt một danh sách child theo một mảng 
// row sắp xếp theo chiều ngang nên được chỉ định bằng tham số hàm ngang : mainAxisAlignment, CrossAxisAlignment theo chiều dọc, column thì ngược lại
// mainAxisSize nếu là max thì nó full width nếu là row và full height nếu là column
// mainAxisSize nếu là min thì nó chiều rộng ôm vừa vặn với child
// import 'package:flutter/material.dart';

// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   mainAxisAlignment: MainAxisAlignment.center
//   mainAxisSize: MainAxisSize.min,
//   children: <Widget>[
//     Text('We move under cover and we move as one'),
//     Text('Through the night, we have one shot to live another day'),
//     Text('We cannot let a stray gunshot give us away'),
//     Text('We will fight up close, seize the moment and stay in it'),
//     Text('It’s either that or meet the business end of a bayonet'),
//     Text('The code word is ‘Rochambeau,’ dig me?'),
//     Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
//   ],
// )

// dùng expanded để full với layout
// Column(
//   children: <Widget>[
//     Text('Deliver features faster'),
//     Text('Craft beautiful UIs'),
//     Expanded(
//       child: FittedBox(
//         fit: BoxFit.contain, // otherwise the logo will be tiny
//         child: const FlutterLogo(),
//       ),
//     ),
//   ],
// )
