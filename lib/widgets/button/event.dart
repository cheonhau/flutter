import 'package:flutter/material.dart';
// bắt các sự kiện khi không phải là button, ví dụ như một text hay một image
// 1 : GestureDetector  : tạo bất cứ sự kiện gì mình muốn
// 2 : inkWell          : kết hợp với ink để tạo một bound background và splash hiệu ứng
class EventWidget extends StatefulWidget {

  @override
  _EventWidgetState createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  String name = "no name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton demo'),
      ),
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(name),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.accessibility_new), 
                onPressed: () {
                  setState(() {
                    name = "icon nek";
                  });
                }
              ),
              GestureDetector(
                child: Text("Gesture"),
                onTap: () {
                  setState(() {
                    name = "text bye GestureDetector";
                  });
                },
                // onDoubleTap: ,
                // onLongPress: ,
              ),
              InkWell(
                child: Container(
                  child: Text("Ink Well"),
                ),
                // onLongPress: ,
                onTap: () {
                  setState(() {
                    name = "event InkWell";
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}