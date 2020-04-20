import 'package:flutter/material.dart';

import './categories_screen.dart';

import './widgets/text/text.dart';
import './widgets/text/text_only.dart';
import './widgets/text/text_style.dart';
import './widgets/text/text_align.dart';
import './widgets/text/text_overflow.dart';

import './widgets/text/rich_tech.dart';

import './layouts/container/container.dart';
import './layouts/container/container_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/' : (ctx) => CategoriesScreen(),
        '/text' : (ctx) => TextWidget(),
        '/text/only' : (ctx) => TextOnly(),
        '/text/style' : (ctx) => TextStyleWidget(),
        '/text/align' : (ctx) => TextAlignWidget(),
        '/text/overflow' : (ctx) => TextOverflowWidget(),
        '/text/richtext' : (ctx) => RichTextWidget(),
        // '/text/overflow' : (ctx) => TextOverflowWidget(),
        '/container' : (ctx) => ContainerWidget(),
        '/container/main' : (ctx) => ContainerMainWidget(),
      },
    );
  }
}
