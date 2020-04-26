import 'package:flutter/material.dart';
// danh sách icon : https://api.flutter.dev/flutter/material/Icons-class.html

double volume = 0.0;
class IconButtonWidget extends StatefulWidget {

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton demo'),
      ),
      body: Column(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: "increase volume",
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  volume += 10;
                });
              },
            ),
          ),
          Center(
            child: Text(
              "current volume is : $volume"
            ),
          ),
          // bound một background icon với ink widget 
          Center(
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors.lime,
                shape: CircleBorder()
              ),
              child: IconButton(
                icon: Icon(Icons.android), 
                onPressed: () {},
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}