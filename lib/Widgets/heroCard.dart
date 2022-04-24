import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';
import 'package:sign_in_interface/Widgets/Clipper3.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: InkWell(
            // ignore: sdk_version_set_literal
            onTap: () => {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, a, b) => DetailsHeroScreen()))
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 5.5),
              child: ClipPath(
                clipper: backgroundClipper3(),
                child: Hero(
                  tag: 'background',
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.deepOrangeAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 7,
              left: MediaQuery.of(context).size.width / 20),
          height: MediaQuery.of(context).size.height / 3,
          child: Image.asset(
            "majj.png",
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.7,
          child: Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Major Aziz Bhatti Shaheed",
                    style: TextStyle(
                        fontFamily: "BubblegumSans", color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "1928-1965",
                    style: TextStyle(
                        fontFamily: "Flavors",
                        fontSize: 12,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
