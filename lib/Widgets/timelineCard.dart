import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

// ignore: must_be_immutable
class getTimeline extends StatelessWidget {
  late String imgName;
  late String heading;
  late String date;
  final Widget pageToShow;
  Color boxColor;
  getTimeline(String imgName, String heading, String date, this.pageToShow,
      this.boxColor) {
    this.imgName = imgName;
    this.heading = heading;
    this.date = date;
    this.boxColor = boxColor;
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        child: GestureDetector(
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageToShow)),
          },
          child: Container(
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 4.8,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: boxColor,
                    spreadRadius: 3,
                    // blurRadius: 0.5,
                    // offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                // color: Colors.black12,
              ),
              child: Center(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.green,
                    ),
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 11,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imgName),
                      radius: 10,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: "Flavors",
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    // height: MediaQuery.of(context).size.height / 11,
                    child: Text(
                      heading,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "BubblegumSans",
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
