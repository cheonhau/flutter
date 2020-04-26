import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';
import '../../border_dotted.dart';
// tham khảo : https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20
// decoration thường được sử dụng với BoxDecoration 
// BoxDecoration ({
//   Color color,                           : định nghĩa background cho container
//   DecorationImage image,                 : chứa 1 image 
//   BoxBorder border,                      : định nghĩa border cho box container : top, right, bottom, left, hoặc all
//   BorderRadiusGeometry borderRadius,     : định nghĩa border radius box container
//   List<BoxShadow> boxShadow,
//   Gradient gradient,
//   BlendMode backgroundBlendMode,
//   BoxShape shape                         : BoxShape.rectangle, BoxShape.circle lúc đó border radius sẽ bị ignore
// })

// border có dùng thằng borderSide
// BorderSide({
//   Color color:const Color(0xFF000000), double width : 1.0, BorderStyle style:BorderStyle.solid
// })
// boxShadow 
// BoxShadow ({
//   Color color : const Color(0xFF000000),   : màu sắc của shadow
//   Offset offset : Offset.zero,             : vị trí dịch chuyển của bóng từ box : (double dx, double dy) : dx->xét theo thành phần nằm ngang, dy->xét theo thành phần nằm dọc
//   double blurRadius : 0.0,                 : độ lệch chuẩn của gausian để kết hợp với hình dạng hộp hay gọi là độ mờ của box
//   double spreadRadius:0.0                  : cái shadow nó to lên và có thể lớn hơn cái container
// })
class ContainerDecorationWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // kiểu thường hay dùng
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage('https:///flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                fit: BoxFit.cover
              ),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(40.0, 10.0),
                  blurRadius: 5.0,
                  spreadRadius: 40.0
                ),
              ]
              // shape: BoxShape.circle
            ),
          ),
          // kiểu border có top, left, right, bottom 
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Color(0xFFFFFFFFFF)
                ),
                left: BorderSide(
                  width: 1.0,
                  color: Color(0xFFFFFFFFFF)
                ),
                right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                  left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                  right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                  bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                ),
                color: Color(0xFFBFBFBF),
              ),
              child: const Text(
                'OK',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF000000))
              ),
            ),
          ),
          // show dotted border do flutter hiện không hỗ trợ
          Container(
            width: 200,
            height: 100,
            // decoration: BoxDecoration(
            //   border: DashPathBorder.all(
            //     dashArray: CircularIntervalList<double>(<double>[5.0, 2.5]),
            //   ),
            //   shape: BoxShape.circle,
            // ),
            foregroundDecoration: BoxDecoration(
              border: DashPathBorder.all(
                dashArray: CircularIntervalList<double>(<double>[5.0, 2.5]),
              ),
              shape: BoxShape.circle,
            ),
          ),

        ],
      )
    );
  }
}