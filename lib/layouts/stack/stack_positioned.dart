import 'package:flutter/material.dart';


class StackPositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo stack'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blueAccent,
            width: 300,
            height: 300,
          ),
          Positioned(
            top: 40,
            right: 50,
            child: Container(
              color: Colors.pink,
              width: 150,
              height: 150,
            ), 
          ),
        ],
      ),
    );
  }
}