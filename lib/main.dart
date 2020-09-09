import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medizone',
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
      home: Start(),
    );
  }
}