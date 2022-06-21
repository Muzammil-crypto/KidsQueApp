import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';
import 'package:sign_in_interface/Screens/About_us.dart';
import 'package:sign_in_interface/Screens/Profile.dart';
import 'package:sign_in_interface/Screens/ProvincesListScreen.dart';
import 'package:sign_in_interface/Screens/citiesListScreen.dart';
import 'package:sign_in_interface/Screens/hero_categories.dart';
import 'package:sign_in_interface/Screens/performance_screen.dart';
import 'package:sign_in_interface/Widgets/ChoiceCards.dart';
import 'package:sign_in_interface/Widgets/heroCard_Clipper.dart';
import 'package:sign_in_interface/Widgets/sideDrawer.dart';
import 'package:timeline_list/timeline.dart';

import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/content_Screen.dart';
import 'package:sign_in_interface/Screens/heroList_screen.dart';
import 'package:sign_in_interface/Screens/timeline_screen.dart';
import 'package:sign_in_interface/main.dart';

import '../Widgets/background_Clipper.dart';
import '../Widgets/customAppBar.dart';
import 'AnimateChoices.dart';

class Topics extends StatefulWidget {
  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  double value = 0;
  Color color1 = Color.fromARGB(103, 87, 97, 0);
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.yellow.shade900,

      drawer: Container(width: 260, child: Side_Drawer()),

      // backgroundColor: Colors.yellow.shade900,
      // extendBodyBehindAppBar: true,
      // body: ClipPath(
      // clipper: BackgroundClipper(),
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/bgb.png'), fit: BoxFit.cover),
          // ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade900,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "All About",
                                  style: TextStyle(
                                      letterSpacing: 6,
                                      fontSize: 40,
                                      fontFamily: "ShinyBalloonDemo",
                                      color: Colors.white),
                                ),
                                Text(
                                  "Pakistan",
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: "ShinyBalloonDemo",
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45)),
                    color: Color.fromARGB(255, 230, 230, 230),
                  ),
                  margin: EdgeInsets.only(top: 230),
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      getContainer(
                          "assets/p11.png",
                          "Explore\n Provinces",
                          Colors.redAccent,
                          Colors.pinkAccent,
                          ProvincesListScreen()),
                      getContainer(
                          "assets/citti.png",
                          "Explore\n Cities",
                          Color.fromARGB(255, 79, 100, 218),
                          Color.fromARGB(202, 13, 50, 51),
                          CitiesListScreen()),
                      getContainer("assets/River.png", "Explore\n Rivers",
                          Colors.green, Colors.teal, ProvincesListScreen()),
                      getContainer(
                          "assets/majj.png",
                          "Explore\n Heroes",
                          Color.fromARGB(255, 167, 5, 5),
                          Colors.deepOrangeAccent,
                          HeroCategory()),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: getContainer(
                            "assets/mpp.png",
                            "Explore\n History",
                            Colors.purple,
                            Colors.deepPurpleAccent,
                            TimelineWidget()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 10,
                child: Row(
                  children: [
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(101, 255, 255, 255),
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () => {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Login(),
                              //   ),
                              // ),
                            },
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 1.35),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(101, 255, 255, 255),
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () =>
                                {_scaffoldKey.currentState!.openDrawer()},
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
