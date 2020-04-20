import 'package:flutter/material.dart';
// text overflow nó có 4 thuộc tính 
// clip         : chỉ hiển thị text trong khung container cho phép và container có thể cắt ngang cái dòng chữ cuối cùng nếu nó nằm trên chiều dài cuối của container ( nói chung container vẵn có chiều dài như vậy và chữ chỉ nằm trong vòng container, còn chữ là còn hiện dù có bị cắt trên dòng cuối cùng)
// ellipsis     : dùng dấu 3 chấm ... để hiển thị text bị tràn, và lúc này text chỉ hiển thị trên 1 dòng, để hiển thị nhiều dòng hơn ta dùng thêm thuộc tính 'maxlines' để quy định số dòng cho lúc tràn này
// fade         : chỉ hiển thị text trong khung container và text bị tràn sẽ được tẩy mờ đi ở dòng cuối cùng
// visible      : hiển thị text bị tràn luôn, text tới đâu thì tới, vượt qua chiều cao của container luôn.


class TextOverflowWidget extends StatelessWidget {
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
            // clip
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO OVERFLOW CLIP : ' + textExample, 
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // ellipsis
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO OVERFLOW ELLIPSIS : ' + textExample, 
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // fade
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO OVERFLOW FADE : ' + textExample, 
                textAlign: TextAlign.justify,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            // visible
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'DEMO OVERFLOW VISIBLE : ' + textExample, 
                textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
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