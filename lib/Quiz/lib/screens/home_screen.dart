import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_in_interface/Quiz/lib/common/alert_util.dart';
import 'package:sign_in_interface/Quiz/lib/common/theme_helper.dart';
import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';
import 'package:sign_in_interface/Quiz/lib/widgets/disco_button.dart';
import 'package:sign_in_interface/Screens/About_us.dart';
import 'package:sign_in_interface/Screens/Profile.dart';
import 'package:sign_in_interface/Screens/content.dart';
import 'package:sign_in_interface/Screens/performance_screen.dart';

import 'quiz_category.dart';
import 'quiz_history_screen.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final QuizStore _quizStore = QuizStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.cyan,
        key: _key,
        drawer: SafeArea(
          child: Container(
            child: navigationDrawer(),
            width: 250,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                bottom: MediaQuery.of(context).size.height / 1.6,
                left: MediaQuery.of(context).size.width / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset("assets/svg.png"),
                ),
              ),
              drawerToggleButton(),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 150),
                        child: Text(
                          "Quiz",
                          style: TextStyle(
                              fontSize: 80,
                              color: Color.fromARGB(255, 255, 92, 146),
                              fontFamily: "BubblegumSans"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        child: Text(
                          "Villa",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: "Flavors"),
                        ),
                      ),
                      SizedBox(height: 30),
                      ...homeScreenButtons(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Drawer navigationDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.cyan, Colors.green],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              //  decoration: BoxDecoration(color: Colors.deepOrangeAccent),
              child: InkWell(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                              fontFamily: "Langar-Regular",
                              fontSize: 15,
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
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
            ListTile(
              title: const Text(
                'Start Quiz',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.start_outlined,
                color: Colors.white,
              ),
              onTap: () async {
                var quiz = await _quizStore.getRandomQuizAsync();
                Navigator.pushNamed(context, "/quiz", arguments: quiz);
              },
            ),
            ListTile(
              title: const Text(
                'Quiz Category',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.category_outlined,
                color: Colors.white,
              ),
              onTap: () async {
                Navigator.pushNamed(context, QuizCategoryScreen.routeName);
              },
            ),
            ListTile(
              title: Text(
                'Quiz History',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.history_outlined,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushNamed(context, QuizHistoryScreen.routeName);
              },
            ),
            ListTile(
              title: Text(
                'See Performance',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.stacked_line_chart,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerformanceScreen(),
                  ),
                );
              },
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.work_off_outlined,
                color: Colors.white,
              ),
              onTap: () {
                // AlertUtil.showAlert(
                //     context, "About us", "More at https://fluttertutorial.net");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Exit',
                style: TextStyle(
                    fontFamily: "Langar-Regular",
                    fontSize: 15,
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContentScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerToggleButton() {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20),
      alignment: Alignment.topLeft,
      child: GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.orange.shade900,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.50),
            child: CircleAvatar(child: Image.asset("assets/pic.png")),
          ),
        ),
        onTap: () {
          _key.currentState!.openDrawer();
        },
      ),
    );
  }

  Text headerText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 72,
          color: Color.fromARGB(255, 250, 70, 130),
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
                color: ThemeHelper.shadowColor,
                offset: Offset(-5, 5),
                blurRadius: 30)
          ]),
    );
  }

  List<Widget> homeScreenButtons(BuildContext context) {
    return [
      DiscoButton(
        onPressed: () async {
          var quiz = await _quizStore.getRandomQuizAsync();
          Navigator.pushNamed(context, QuizScreen.routeName, arguments: quiz);
        },
        child: Text(
          "Start Quiz",
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontFamily: "BubblegumSans"),
        ),
        isActive: true,
      ),
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, QuizCategoryScreen.routeName);
        },
        child: Text(
          "Quiz Category",
          style: TextStyle(
              fontSize: 30,
              color: ThemeHelper.primaryColor,
              fontFamily: "BubblegumSans"),
        ),
      ),
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, QuizHistoryScreen.routeName);
        },
        child: Text(
          "Quiz History",
          style: TextStyle(
              fontSize: 30,
              color: ThemeHelper.primaryColor,
              fontFamily: "BubblegumSans"),
        ),
      ),
    ];
  }
}
