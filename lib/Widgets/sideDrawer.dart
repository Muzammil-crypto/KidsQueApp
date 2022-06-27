import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';
import 'package:sign_in_interface/Screens/About_us.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/Profile.dart';

class Side_Drawer extends StatelessWidget {
  const Side_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.cyan])),

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen())),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomepageScreen())),
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
    );
  }
}
