import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/main.dart';
import 'package:sign_in_interface/Screens/topicPage.dart';

import '../Widgets/Clipper.dart';
import 'chooice_screen.dart';
import '../Widgets/customAppBar.dart';

class Topics extends StatefulWidget {
  @override
  final String ImageUrl;
  final String title;
  final String description;

  const Topics({Key key, this.ImageUrl, this.title, this.description});

  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  double value = 0;

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
                image: AssetImage('rrr.png'), fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(right: 350, top: 20),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login())),
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Center(
                  child: Text(
                    "Learn About Pakistan",
                    style: TextStyle(
                        fontFamily: "BubblegumSans",
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 255, 75, 135),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
              ),
              getContainer(1, "Provinces.png", "Explore\n Provinces",
                  Color.fromARGB(174, 255, 64, 128)),
              getContainer(1, "Cities.png", "Explore\n Cities",
                  Color.fromARGB(197, 153, 83, 4)),
              getContainer(1, "River.png", "Explore\n Rivers",
                  Color.fromARGB(172, 3, 65, 107)),
            ],
          ),
        ),
      ),
    );
  }
}

class getContainer extends StatelessWidget {
  int id;
  String imgName;
  String heading;
  Color color;
  getContainer(int id, String imgName, String heading, Color color) {
    this.id = id;
    this.imgName = imgName;
    this.heading = heading;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => topicPage(id))),
        },
        child: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                    left: 30,
                    right: 30,
                    bottom: 5),
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: color),
                child: Stack(
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.height / 5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image(
                          image: AssetImage(imgName),
                          height: MediaQuery.of(context).size.height / 4.5,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 50, top: 40),
                                child: Text(
                                  this.heading,
                                  style: TextStyle(
                                      fontFamily: "BubblegumSans",
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
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
