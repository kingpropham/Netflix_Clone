import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  List<String> pic = [
    'assets/icons/home.png',
    'assets/icons/search.png',
    'assets/icons/download--v2.png',
    'assets/icons/menu.png',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildBottomNav(0),
        buildBottomNav(1),
        buildBottomNav(2),
        buildBottomNav(3),
      ],
    );
  }

  Widget buildBottomNav(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Image.asset(
        pic[index],
        height: 25,
        width: 25,
        color: selectedIndex == index
            ? Colors.white
            : Colors.white.withOpacity(0.6),
      ),
    );
  }
}
