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
import 'package:sign_in_interface/Widgets/Clipper3.dart';
import 'package:timeline_list/timeline.dart';

import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/content_Screen.dart';
import 'package:sign_in_interface/Screens/heroList_screen.dart';
import 'package:sign_in_interface/Screens/timeline_screen.dart';
import 'package:sign_in_interface/main.dart';

import '../Widgets/Clipper.dart';
import '../Widgets/customAppBar.dart';
import 'AnimateChoices.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0.8,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 55, 188, 250),
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(
              "All About Pakistan",
              style: TextStyle(
                fontFamily: "ShinyBalloonDemo",
                fontSize: 35.0,
                // letterSpacing: 1.5,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.cyan])),
          width: 200,
          // color: Colors.amberAccent,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                child: InkWell(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          child: Image(
                            image: AssetImage("assets/pic.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Muzammil Rafiq",
                            style: TextStyle(
                                fontFamily: "BubblegumSans",
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen())),
                  },
                ),
              ),
              InkWell(
                child: Container(
                  child: const ListTile(
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "BubblegumSans",
                      ),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomepageScreen())),
                },
              ),
              InkWell(
                child: Container(
                  child: const ListTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "BubblegumSans",
                      ),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen())),
                },
              ),
              InkWell(
                child: Container(
                  child: const ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "BubblegumSans",
                      ),
                    ),
                    leading: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs())),
                },
              ),
              InkWell(
                child: Container(
                  child: const ListTile(
                    title: Text(
                      "Quiz",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "BubblegumSans",
                      ),
                    ),
                    leading: Icon(
                      Icons.quiz_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizSplashScreen())),
                },
              ),
              InkWell(
                child: Container(
                  child: const ListTile(
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "BubblegumSans",
                      ),
                    ),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                      (route) => false),
                },
              ),
            ],
          ),
        )),
      ),
      backgroundColor: Colors.yellow.shade900,
      extendBodyBehindAppBar: true,
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
              // Row(
              //   children: [
              //     SizedBox(
              //       height: 100,
              //     ),

              //     Container(
              //       decoration: BoxDecoration(
              //           // color: Colors.yellow.shade900,
              //           borderRadius: BorderRadius.circular(20)),
              //       child: Padding(
              //         padding: const EdgeInsets.only(left: 8.0),
              //         child: Center(
              //           child: Text(
              //             "All About Pakistan",
              //             style: TextStyle(
              //               fontFamily: "ShinyBalloonDemo",
              //               fontSize: 35.0,
              //               // letterSpacing: 1.5,
              //               color: Colors.white,
              //               // fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              getContainer("assets/cull.png", "Explore\n Provinces",
                  Colors.redAccent, Colors.pinkAccent, ProvincesListScreen()),
              getContainer(
                  "assets/citti.png",
                  "Explore\n Cities",
                  Color.fromARGB(255, 79, 100, 218),
                  Color.fromARGB(202, 13, 50, 51),
                  CitiesListScreen()),
              // getContainer("assets/River.png", "Explore\n Rivers", Colors.green,
              //     Colors.teal, ProvincesListScreen()),
              getContainer(
                  "assets/majj.png",
                  "Explore\n Heroes",
                  Color.fromARGB(255, 167, 5, 5),
                  Colors.deepOrangeAccent,
                  HeroCategory()),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: getContainer("assets/mpp.png", "Explore\n History",
                    Colors.purple, Colors.deepPurpleAccent, TimelineWidget()),
              ),
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
                height: MediaQuery.of(context).size.height / 3.8,
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
                          height: 150,
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
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              //   color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  height: 35,
                                  width: 90,
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    shadowColor: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "Visit the Topic",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontFamily: "BubblegumSans"),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(left: 105),
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    shadowColor: Colors.white,
                                    child: Center(
                                        child: Icon(
                                      Icons.menu_book_sharp,
                                      color: Colors.black,
                                    )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
              ),
              // AnimatedFlutterLogo(),
            ],
          ),
        ),
      ),
    );
  }
}

// class AnimatedFlutterLogo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => new _AnimatedFlutterLogoState();
// }

// class _AnimatedFlutterLogoState extends State<AnimatedFlutterLogo> {
//   late Timer _timer;
//   FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

//   _AnimatedFlutterLogoState() {
//     _timer = new Timer(const Duration(milliseconds: 100), () {
//       setState(() {
//         _logoStyle = FlutterLogoStyle.horizontal;
//       });
//     });
//   }
//   bool isEnd = false;

//   @override
//   void dispose() {
//     super.dispose();
//     _timer.cancel();
//     isEnd = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isEnd
//         ? Container()
//         : FlutterLogo(
//             size: 200.0,
//             textColor: Colors.white,
//             style: _logoStyle,
//           );
//   }
// }
