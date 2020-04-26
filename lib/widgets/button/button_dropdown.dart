import 'package:flutter/material.dart';

// ở đây mình chỉ quan tâm tới các phần này 
// value      : giá trị mặc định của dropdown
// icon       : icon mặc định là giống select box, có thể thay đổi bằng icon khác
// elevation  : độ nổi 
// style      : style của text
// onChanged  : phần xử lý thanh đổi, nếu null thì dropdown sẽ bị disabled 
// items      : những đối tượng được đưa vào danh sách xổ xuống

class DropdownButtonWidget extends StatefulWidget {

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<DropdownButtonWidget> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown button demo'),
      ),
      body: Column(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(
                color: Colors.deepPurple
              ),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              items: <String>['One', 'Two', 'Three', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    // key: ,
                    value: value,
                    child: Text(value),
                  );
                }).toList(), 
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              }
            ),
          ),
          Center(
            child: Text('value has selected is : $dropdownValue'),
          ),
        ],
      ),
    );
  }
}