import 'package:bizkoalo/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final caption = 'My Quatations';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: caption,
      home: Home(caption: caption),
    );
  }
}
