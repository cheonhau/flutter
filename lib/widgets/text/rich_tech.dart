import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo Rich Text'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black26,
              ),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Do you have account ?',
                  // style: DefaultTextStyle.of(context).style,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('tap on text sign up');
                          // navigate
                          // ở đây chúng ta hông cần wrap text với một widget khác như GestureDetector 
                        }
                    ),
                    TextSpan(
                      text: 'tạo một border nek nẻ nẹ nìa nía',
                      style: TextStyle(
                        background: Paint()
                          ..style = PaintingStyle.stroke
                          ..color = Colors.red
                      )
                    ),
                    // TextSpan() ..., multiple text span here
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}