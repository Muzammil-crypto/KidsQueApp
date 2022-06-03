import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';

class DetailsHeroScreen extends StatelessWidget {
  //late String tag;
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;
  late String description;
  DetailsHeroScreen(
    String imgName,
    String heading,
    Color color1,
    Color color2,
    this.description,
    //  this.tag,
  ) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //   tag: tag,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.8,
                child: Image.network(imgName),
              ),
              Column(children: [
                Container(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              heading,
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 16,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
