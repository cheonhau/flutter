// indexedStack xác định chỉ 1 stack được xuất hiện được chỉ định
import 'package:flutter/material.dart';

class IndexedStackWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo indexed'),
      ),
      body: IndexedStack(
        index: 1,
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blueAccent,
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.pink,
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}