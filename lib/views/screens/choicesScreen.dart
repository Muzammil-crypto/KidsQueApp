import 'package:flutter/material.dart';
import '../Screens/riverListScreen.dart';
import '../Widgets/ChoiceCards.dart';
import '../Widgets/background_Clipper.dart';
import '../Widgets/sideDrawer.dart';
import 'ProvincesListScreen.dart';
import 'citiesListScreen.dart';
import 'hero_categories.dart';
import 'historyTimelineScreen.dart';

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
    return ClipPath(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.yellow.shade900,
        drawer: Container(width: 260, child: Side_Drawer()),
        extendBodyBehindAppBar: true,
        body: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1.7,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                        color: Color.fromARGB(255, 230, 230, 230),
                      ),
                      margin: EdgeInsets.only(top: 230),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.horizontal_rule_sharp,
                              size: 40,
                              color: Color.fromARGB(255, 70, 69, 69),
                            ),
                          ),
                          GetContainer(
                              "assets/pc.gif",
                              "Explore\n Cultures",
                              Colors.redAccent,
                              Colors.pinkAccent,
                              ProvincesListScreen()),
                          GetContainer(
                              "assets/pci.gif",
                              "Explore\n Cities",
                              Color.fromARGB(255, 79, 100, 218),
                              Color.fromARGB(200, 24, 90, 92),
                              CitiesListScreen()),
                          GetContainer("assets/pr.gif", "Explore\n Rivers",
                              Colors.green, Colors.teal, RiversListScreen()),
                          GetContainer(
                              "assets/majj.png",
                              "Explore\n Heroes",
                              Color.fromARGB(223, 167, 5, 5),
                              Colors.deepOrangeAccent,
                              HeroCategory()),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: GetContainer(
                                "assets/pm.gif",
                                "Explore\n History",
                                Colors.green,
                                Colors.yellow.shade600,
                                TimelineWidget()),
                          ),
                        ],
                      ),
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
                              onPressed: () => {},
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
      ),
    );
  }
}
