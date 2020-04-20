import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// text style để định nghĩa cho text đẹp hơn 
class TextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Style'),        
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'demo 1',
                style: TextStyle(
                  // fontFamily: 
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  // fontStyle: FontStyle.normal
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                )
              ),
              child: Text(
                'demo 2',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  height: 10, // lineheight
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                )
              ),
              child: Text(
                'hello world look at me',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue[700]
                ),
              ),
            ),
            // foreground :
            // foreground không dùng đồng thời ngang cấp với color trong text
            // stack dùng để chồng lên nhau, ở đây mình chữ chồng lên chữ để có hiệu ứng border bên ngoài đẹp
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Greetings, planet!',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.white70,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'Greetings, planet!',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}