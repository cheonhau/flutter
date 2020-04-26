import 'package:flutter/material.dart';

import './category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'text',
    color: Colors.purple,
    url: '/text',
  ),
  Category(
    id: 'c2',
    title: 'button',
    color: Colors.red,
    url: '/button',
  ),
  Category(
    id: 'c3',
    title: 'Container',
    color: Colors.orange,
    url: '/container',
  ),
  Category(
    id: 'c4',
    title: 'Stack',
    color: Colors.amber,
    url: '/stack',
  ),
  Category(
    id: 'c5',
    title: 'Button',
    color: Colors.blue,
    url: '/button',
  ),
  // Category(
  //   id: 'c6',
  //   title: 'Exotic',
  //   color: Colors.green,
  //   url: '/text',
  // ),
  // Category(
  //   id: 'c7',
  //   title: 'Breakfast',
  //   color: Colors.lightBlue,
  //   url: '/text',
  // ),
  // Category(
  //   id: 'c8',
  //   title: 'Asian',
  //   color: Colors.lightGreen,
  //   url: '/text',
  // ),
  // Category(
  //   id: 'c9',
  //   title: 'French',
  //   color: Colors.pink,
  //   url: '/text',
  // ),
  // Category(
  //   id: 'c10',
  //   title: 'Summer',
  //   color: Colors.teal,
  //   url: '/text',
  // ),
];

const DUMMY_TEXT = const [
    Category(
      id: '1',
      title: 'text only',
      color: Colors.purple,
      url: '/text/only',
    ),
    Category(
      id: '2',
      title: 'Text Style',
      color: Colors.red,
      url: '/text/style',
    ),
    Category(
      id: '3',
      title: 'Text Align',
      color: Colors.orange,
      url: '/text/align',
    ),
    Category(
      id: '4',
      title: 'Text Overflow',
      color: Colors.amber,
      url: '/text/overflow',
    ),
    Category(
      id: '5',
      title: 'Text Span',
      color: Colors.blue,
      url: '/text/richtext',
    ),
    // Category(
    //   id: 'c6',
    //   title: 'Exotic',
    //   color: Colors.green,
    //   url: '/text',
    // ),
];

const DUMMY_CONTAINER = const [
    Category(
      id: '1',
      title: 'main container',
      color: Colors.purple,
      url: '/container/main',
    ),
    Category(
      id: '2',
      title: 'decoration',
      color: Colors.red,
      url: '/container/decoration',
    ),
    // Category(
    //   id: '3',
    //   title: 'Text Align',
    //   color: Colors.orange,
    //   url: '/text/align',
    // ),
    // Category(
    //   id: '4',
    //   title: 'Text Overflow',
    //   color: Colors.amber,
    //   url: '/text/overflow',
    // ),
    // Category(
    //   id: '5',
    //   title: 'Text Span',
    //   color: Colors.blue,
    //   url: '/text/richtext',
    // ),
];
const DUMMY_STACK = const [
    Category(
      id: '2',
      title: 'standard',
      color: Colors.red,
      url: '/stack/standard',
    ),
    Category(
      id: '3',
      title: 'align',
      color: Colors.orange,
      url: '/stack/align',
    ),
    Category(
      id: '4',
      title: 'positioned',
      color: Colors.amber,
      url: '/stack/positioned',
    ),
    Category(
      id: '1',
      title: 'Indexed Stack',
      color: Colors.purple,
      url: '/stack/indexed',
    ),
    Category(
      id: '5',
      title: 'Example 1',
      color: Colors.blue,
      url: '/stack/example_1',
    ),
];
const DUMMY_BUTTON = const [
    Category(
      id: '1',
      title: 'FlatButton',
      color: Colors.red,
      url: '/button/flatbutton',
    ),
    Category(
      id: '2',
      title: 'RaisedButton',
      color: Colors.orange,
      url: '/button/raisedbutton',
    ),
    Category(
      id: '3',
      title: 'DropdowButton',
      color: Colors.amber,
      url: '/button/dropdownbutton',
    ),
    Category(
      id: '4',
      title: 'Icon Button',
      color: Colors.purple,
      url: '/button/icon',
    ),
    Category(
      id: '5',
      title: 'Event',
      color: Colors.blue,
      url: '/button/event',
    ),
];