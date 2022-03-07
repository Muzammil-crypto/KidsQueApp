import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_in_interface/Login1.dart';
import 'package:sign_in_interface/main.dart';
import 'package:sign_in_interface/topicPage.dart';

import 'ZoomDrawer.dart';
import 'customAppBar.dart';

class Topics extends StatefulWidget {
  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          CustomAppBar(),
        ],
        toolbarHeight: 60,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('rrr.png'), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(199, 255, 119, 0),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Center(
                child: Text(
                  "Learn About Pakistan",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
            ),
            getContainer(
                1,
                "ch4.png",
                "Culture",
                "Culture is the acquired knowledge people use to interpret experience and generate behavior.",
                Color.fromARGB(174, 255, 64, 128)),
            getContainer(
              2,
              "ch1.png",
              "Heroes",
              "A person who is admired for their courage, outstanding achievements, or noble qualities",
              Color.fromARGB(211, 184, 172, 8),
            ),
            getContainer(
                3,
                "ch3.png",
                "Places",
                "Pakistan is rich in its tourist destinations offering a diverse range of choices for different types of tourists.",
                Color.fromARGB(173, 64, 93, 255)),
            getContainer(
              4,
              "ch4.png",
              "Foods",
              "Pakistan is famous for its Moghul-inspired cuisine: pulaos, biryanis, kababs, and kormas.",
              Color.fromARGB(195, 5, 168, 119),
            ),
            getContainer(
                5,
                "ch1.png",
                "Sports",
                "Sport in Pakistan is a significant part of Pakistani culture. Cricket is the most popular sport in Pakistan.",
                Color.fromARGB(172, 197, 10, 10)),

            //! Gesture For Slide
          ],
        ),
      ),
    );
  }
}

class getContainer extends StatelessWidget {
  int id;
  String imgName;
  String heading;
  String subtitle;
  Color color;
  getContainer(
      int id, String imgName, String heading, String subtitle, Color color) {
    this.id = id;
    this.imgName = imgName;
    this.heading = heading;
    this.subtitle = subtitle;
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
                margin:
                    EdgeInsets.only(top: 10, left: 85, right: 15, bottom: 5),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: color),
                child: Stack(
                  children: [
                    Positioned(
                      left: -60,
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
                                margin: EdgeInsets.only(left: 110, top: 20),
                                child: Text(
                                  this.heading,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 40, top: 5, right: 15),
                            child: Text(
                              subtitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
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
