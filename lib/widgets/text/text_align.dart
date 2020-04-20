import 'package:flutter/material.dart';
// text align nó có 6 thuộc tính 
// left         : căn chỉnh text về bên trái của container
// right        : căn chỉnh text về bên phải của container
// center       : căn chỉnh text vào giữa của container
// justify      : căn chỉnh kéo dài text của từng dòng đều 2 bên của văn bản nhìn cho đẹp, và bắt đầu từ cạnh trái
// start , end  : được dùng với textDirection 

// giải thích thêm : textDirection có 2 thuộc tính là 
// TextDirection.ltr : định nghĩa cho văn bản kiểu phương tây : left -> right => TextAlign.start sẽ là căn bên trái và ngược lại vs TextAlign.end
// TextDirection.rtl : định nghĩa cho văn bản kiểu ngừoi ấn độ : right -> left , như trên
class TextAlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textExample = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum';
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo Text only'),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // LEFT
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO TEXT ALIGN LEFT : ' + textExample, 
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // RIGHT
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO TEXT ALIGN RIGHT : ' + textExample, 
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // CENTER
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO TEXT ALIGN CENTER : ' + textExample, 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // JUSTIFY
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO TEXT ALIGN JUSTIFY : ' + textExample, 
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}