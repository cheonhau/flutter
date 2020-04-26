import 'package:flutter/material.dart';

class FlatButtonWidget extends StatefulWidget {
  @override
  _FlatButtonWidgetState createState() => _FlatButtonWidgetState();
}

class _FlatButtonWidgetState extends State<FlatButtonWidget> {
  bool enableBtn;

  @override
  void initState() {
    // TODO: implement initState
    enableBtn = false;
  }

  void enableButton () {
    setState(() {
      enableBtn = !enableBtn;
    });
  }

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
            child: FlatButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              onPressed: enableBtn ? null : () {},
              child: Text(
                'Flat Button',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4
              ),
              splashColor: Colors.blueAccent, // hiệu ứng khi chạm vào button , nó sẽ lan rộng từ 1 điểm ở đầu mút chạm vào tới hết button
            ),
          ),
          Center(
            child: FlatButton(
              onPressed: enableButton, 
              child: Text(
                'change enable button'
              ),
            ),
          ),
        ],
      ),
    );
  }
}