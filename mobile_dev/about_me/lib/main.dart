import 'package:flutter/material.dart';
import 'package:about_me/screens/home.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      home: Home(),
    );
  }
}