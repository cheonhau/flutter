import 'package:flutter/material.dart';

class ContainerMainWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 200, // double.infinity dùng trong trường hợp full width với parent
            height: 100, // khi bạn không set width, height thì nó sẽ fit width height childrent của container
            color: Colors.blueGrey, // background của container
            padding: EdgeInsets.symmetric(
              horizontal: 4, // padding theo bề ngang trái và phải
              vertical: 8, // padding theo chiều thẳng đứng tức là trên và dưới
            ),
            // EdgeInsetsDirectional sẽ phụ thuộc vào textDirection kiểu chữ rtl , ltr kiểu viết từ trái qua phải hay ngược lại
            margin: EdgeInsets.only(
              left: 3,
            ),
            alignment: Alignment.bottomRight, // định ví trí cho child của container 
            child: Text('align bottom', style: TextStyle(
              color: Colors.white
            ),),
          ),
          Container(
            width: double.infinity,
            height: 100,
            // padding: EdgeInsets.all(10),
            // có thể set color ở trong boxdecoration
            decoration: BoxDecoration(
              color: Colors.brown,
              image: DecorationImage(
                // fit: BoxFit.fitWidth,
                image: NetworkImage(
                  'https://flutter.io/images/catalog-widget-placeholder.png'
                ),
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage('https:///flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                fit: BoxFit.cover
              ),
              border: Border.all(
                width: 2,
                color: Colors.black
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      )
    );
  }
}