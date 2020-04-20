import 'package:flutter/material.dart';

class TextOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo Text only'),
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
    );
  }
}