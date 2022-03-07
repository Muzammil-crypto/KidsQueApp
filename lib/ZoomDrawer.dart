import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/topics.dart';

class DrawerAnimated extends StatefulWidget {
  const DrawerAnimated({Key key}) : super(key: key);

  @override
  _DrawerAnimatedState createState() => _DrawerAnimatedState();
}

class _DrawerAnimatedState extends State<DrawerAnimated> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Here Color Of Page Drawer !
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 7, 18, 119),
              Colors.deepPurpleAccent
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),

          // ! simple navigation menu !
          SafeArea(
              child: Container(
            width: 200,
            // color: Colors.amberAccent,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 45,
                        child: Image(image: AssetImage("pic.png")),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Muzammil",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Exit",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),

          // ! : MainScreen
          TweenAnimationBuilder(
              // ? Here Change Animation
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: value),
              // ? and here change
              duration: const Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0, 3, 200 * val)
                      ..rotateY((pi / 6) * val),
                    child: Topics()));
              }),

          //    ! Gesture For Slide
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
