import 'package:flutter/material.dart';
import 'package:netflix_clone/Details_Page/detail_main_page.dart';
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
        scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1),
      ),
      home: DetailBody(img: 'assets/pictures/Glow.jfif'),
      //home: HomeScreen(),
    );
  }
}
