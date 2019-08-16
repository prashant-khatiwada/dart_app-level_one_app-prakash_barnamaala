import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/home_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prakash Barnamaala',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),

      // Use of another file - home_widget.dart
      home: Home(),
    );
  }
}