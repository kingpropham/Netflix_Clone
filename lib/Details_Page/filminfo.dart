import 'package:flutter/material.dart';

class Filminfo extends StatelessWidget {
  const Filminfo({
    Key key,
    @required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 115, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 156,
            width: 104,
            margin: EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  filminfotext("91% Match", Color.fromRGBO(75, 239, 121, 1)),
                  filminfotext("2 Seasons", Colors.white),
                ],
              ),
              Row(
                children: <Widget>[
                  filminfotext("TV-MA", Colors.white),
                  filminfotext("2018", Colors.white),
                ],
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 8),
                height: 47,
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          size: 32,
                          color: Colors.white,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mulish',
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.thumb_up_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                        Text(
                          'Rate',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mulish',
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.ios_share,
                          size: 32,
                          color: Colors.white,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mulish',
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget filminfotext(String infotext, Color infocolor) {
  return Container(
    height: 30,
    width: 130,
    child: Text(
      infotext,
      style: TextStyle(
        color: infocolor,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w400,
        fontSize: 13,
        letterSpacing: 0.8,
      ),
    ),
  );
}
