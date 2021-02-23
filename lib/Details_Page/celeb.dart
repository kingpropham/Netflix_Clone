import 'package:flutter/material.dart';

Widget celeb(String pic) {
  return Container(
    margin: EdgeInsets.only(right: 16),
    height: 44,
    width: 44,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(pic),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget more() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Icon(
        Icons.more_horiz,
        color: Colors.white,
        size: 30,
      ),
    ),
  );
}
