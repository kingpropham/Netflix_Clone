import 'package:flutter/material.dart';
import 'package:netflix_clone/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        fontFamily: 'Mulish',
        scaffoldBackgroundColor: Color.fromRGBO(25, 25, 25, 1),
      ),
      home: HomeScreen(),
    );
  }
}
