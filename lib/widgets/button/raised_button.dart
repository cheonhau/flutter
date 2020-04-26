import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {

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
            child: RaisedButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              onPressed: () {},
              child: Text(
                'raised Button',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4
              ),
              splashColor: Colors.blueAccent, // hiệu ứng khi chạm vào button , nó sẽ lan rộng từ 1 điểm ở đầu mút chạm vào tới hết button
              shape: RoundedRectangleBorder( // hình dạng của nút
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}