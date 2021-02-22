import 'package:flutter/material.dart';

class EpTrailer extends StatefulWidget {
  @override
  _EpTrailer createState() => _EpTrailer();
}

class _EpTrailer extends State<EpTrailer> {
  List<String> categories = ["Espisodes", "Trailer & More"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: <Widget>[
          buildep(0),
          buildep(1),
        ],
      ),
    );
  }

  Widget buildep(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 39, bottom: 10),
        height: 30,
        child: Container(
          padding: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: selectedIndex == index
                    ? Color(0xFFD50000)
                    : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            categories[index],
            style: TextStyle(
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 15,
              letterSpacing: -0.016,
            ),
          ),
        ),
      ),
    );
  }
}
