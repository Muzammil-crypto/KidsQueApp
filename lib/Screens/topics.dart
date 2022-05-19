import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/performance_screen.dart';
import 'package:sign_in_interface/Widgets/Clipper3.dart';
import 'package:timeline_list/timeline.dart';

import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/content.dart';
import 'package:sign_in_interface/Screens/hero_screen.dart';
import 'package:sign_in_interface/Screens/timeline_screen.dart';
import 'package:sign_in_interface/main.dart';

import '../Widgets/Clipper.dart';
import '../Widgets/customAppBar.dart';
import 'chooice_screen.dart';

class Topics extends StatefulWidget {
  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  double value = 0;
  Color color1 = Color.fromARGB(103, 87, 97, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          // CustomAppBar(),
        ],
        toolbarHeight: 0,
      ),
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bgb.png'), fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        // right: MediaQuery.of(context).size.width / 1.22,
                        ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login())),
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.yellow.shade900,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "All About Pakistan",
                        style: TextStyle(
                          fontFamily: "ShinyBalloonDemo",
                          fontSize: 30.0,
                          // letterSpacing: 1.5,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // height: MediaQuery.of(context).size.height ,
                    //  width: MediaQuery.of(context).size.width ,
                  ),
                ],
              ),
              getContainer(
                  "assets/cull.png",
                  "Explore\n Provinces",
                  Color.fromARGB(255, 216, 56, 163),
                  Color.fromARGB(255, 138, 55, 163),
                  ContentScreen()),
              getContainer(
                  "assets/citti.png",
                  "Explore\n Cities",
                  Color.fromARGB(255, 79, 100, 218),
                  Color.fromARGB(202, 13, 50, 51),
                  ContentScreen()),
              getContainer(
                  "assets/majj.png",
                  "Explore\n Heroes",
                  Color.fromARGB(255, 167, 5, 5),
                  Colors.deepOrangeAccent,
                  HeroesScreen(2)),
              getContainer("assets/mpp.png", "Explore\n History", Colors.purple,
                  Colors.deepPurpleAccent, TimelineWidget()),
              getContainer("assets/River.png", "Explore\n Rivers", Colors.green,
                  Colors.teal, ContentScreen()),

              // getContainer("assets/cull.png", "Explore\n Provinces",
              //     Color.fromARGB(221, 90, 3, 64), ContentScreen()),
              // getContainer("assets/citti.png", "Explore\n Cities",
              //     Color.fromARGB(255, 75, 2, 2), ContentScreen()),
              // getContainer("assets/majj.png", "Explore\n Heroes",
              //     Color.fromARGB(255, 1, 86, 97), HeroesScreen(2)),
              // getContainer("assets/mpp.png", "Explore\n History",
              //     Color.fromARGB(255, 57, 0, 97), TimelineWidget()),
              // getContainer("assets/River.png", "Explore\n Rivers",
              //     Color.fromARGB(255, 155, 76, 2), ContentScreen()),
            ],
          ),
        ),
      ),
    );
  }
}

class getContainer extends StatelessWidget {
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;

  final Widget pageToShow;

  getContainer(String imgName, String heading, Color color1, Color color2,
      this.pageToShow) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageToShow)),
        },
        child: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 40,
                    left: 30,
                    right: 30,
                    bottom: 5),
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(colors: [color1, color2]),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: MediaQuery.of(context).size.height / 6.2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Container(
                          height: 160,
                          width: 150,
                          child: Image(
                            image: AssetImage(imgName),
                            height: MediaQuery.of(context).size.height / 5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 40),
                                child: Text(
                                  this.heading,
                                  style: TextStyle(
                                      fontFamily: "BubblegumSans",
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                  overflow: Overflow.visible,
                ),
              ),

              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
