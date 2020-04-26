import 'package:flutter/material.dart';

class ExampleStack1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tphcm.jpg'),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 48.0,
          left: 10.0,
          right: 10.0,
          child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Hồ Chí Minh',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Text('Rồi cũng đến lúc, anh và em rời xa Rồi cũng đến lúc,'),
                      Text('nỗi nhớ quẩn quanh đời ta Mây trời rộng lớn!'),
                      Text('yêu em biết mấy Thu về làm mây êm ái nhưng giết tình mình,'),
                      Text('như một cơn mơ'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
