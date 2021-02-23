import 'package:flutter/material.dart';

Widget playbutton() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 44,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD50000).withOpacity(.6),
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadius.circular(80),
        color: Color(0xFFD50000),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.play_arrow_rounded,
            size: 33,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              'PLAY',
              style: TextStyle(
                letterSpacing: 1.2,
                color: Colors.white,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
