import 'package:flutter/material.dart';
import 'package:netflix_clone/Details_Page/ep_trailer_bar.dart';
import 'package:netflix_clone/Details_Page/filminfo.dart';
import 'package:netflix_clone/constant.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key key,
    @required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        height: 38,
        width: 38,
        margin: EdgeInsets.only(top: 16),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.black.withOpacity(0.75),
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset(
                          "assets/pictures/glow.jpg",
                          height: MediaQuery.of(context).size.height * 0.3 + 16,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3 + 16,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(25, 25, 25, 1),
                                  Colors.transparent.withOpacity(0.2)
                                ],
                                begin: const FractionalOffset(0.0, 0.9),
                                end: const FractionalOffset(0.0, 0.4),
                                tileMode: TileMode.clamp),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 220),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.12,
                        left: 16,
                        right: 16,
                      ),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(25, 25, 25, 1)),
                      child: Column(
                        children: <Widget>[
                          playbutton(),
                          SizedBox(height: 32),
                          Text(
                            'A look at the personal and professional lives of a group of women who perform for a wrestling organization in Los Angeles during the 1980s.',
                            style: TextStyle(
                              letterSpacing: -0.02,
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: <Widget>[
                              celeb('assets/pictures/ab.jfif'),
                              celeb('assets/pictures/ac.jfif'),
                              celeb('assets/pictures/ad.jfif'),
                              more(),
                            ],
                          ),
                          SizedBox(height: 32),
                          EpTrailer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Text(
                                  "Season 2",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: -0.016,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          Container(
                            width: MediaQuery.of(context).size.width - 32,
                            height:
                                (MediaQuery.of(context).size.width - 32) * 0.6,
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.dstATop),
                                image:
                                    AssetImage("assets/pictures/Epcover.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                                left: 16,
                                right: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'S2:E1',
                                        style: eptextstyle,
                                      ),
                                      Icon(
                                        Icons.download_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 87),
                                  Text(
                                    'Viking Funeral',
                                    style: eptextstyle,
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Nerves run high as the ladies return to work and meet a new cast member. To boost morale, Ruth takes the gang on a raucous outing to the mall.',
                                    style: eptextstyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Filminfo(img: img),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
