import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/heroCard_Clipper.dart';

// ignore: must_be_immutable
class HeroCard extends StatelessWidget {
  // late String tag;
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;
  late String date;
  final Widget pageToShow;
  HeroCard(
    String imgName,
    String heading,
    Color color1,
    Color color2,
    this.pageToShow,
    this.date,
    // this.tag,
  ) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            child: InkWell(
              // ignore: sdk_version_set_literal
              onTap: () => {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, a, b) => pageToShow))
              },
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5.5,
                    right: MediaQuery.of(context).size.width / 18),
                child: ClipPath(
                  clipper: backgroundClipper3(),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [color1, color2],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight),
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
            child: Image.network(
              imgName,
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
                      heading,
                      style: TextStyle(
                          fontFamily: "BubblegumSans", color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      date,
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
      ),
    );
  }
}
