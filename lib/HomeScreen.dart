import 'package:flutter/material.dart';
import 'package:netflix_clone/bottomnavbar.dart';
import 'package:netflix_clone/constant.dart';
import 'package:netflix_clone/categories.Dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          height: 100.0,
          child: Center(
            child: Image.asset(
              "assets/pictures/logo.png",
              height: 70,
              alignment: Alignment.topCenter,
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: const FractionalOffset(0.0, 0.2),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(30, 30, 30, 1)),
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    category(0),
                    category(1),
                    category(2),
                    category(3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: Container(
          padding: EdgeInsets.only(left: 38, right: 38),
          height: 80.0,
          child: Center(
            child: BottomNav(),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: const FractionalOffset(0.0, 0.8),
                end: const FractionalOffset(0.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
    );
  }
}

Widget category(int index) {
  return Padding(
    padding: EdgeInsets.only(top: 16, bottom: 16),
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 16),
          child: Text(
            categories[index]['name'],
            style: titlef,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 156,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.only(left: 8),
            scrollDirection: Axis.horizontal,
            children: [
              ...(categories[index]['film'] as List<String>).map(
                (film) {
                  return listItem(index, film);
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget listItem(int indexcate, String film) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 156,
      width: 104,
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(film),
        ),
      ),
    ),
  );
}
