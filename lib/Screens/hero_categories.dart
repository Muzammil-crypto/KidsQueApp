import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/home_screen.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/hero_screen.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';
import 'package:sign_in_interface/Screens/topics.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';

import '../Widgets/Clipper3.dart';
import '../Widgets/heroCard.dart';

class HeroCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              // right: MediaQuery.of(context).size.width / 1.22,
                              ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Topics())),
                            },
                          ),
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height / 5,
                          margin: EdgeInsets.only(top: 80),
                          child: Text(
                            "National Heroes of",
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: "BubblegumSans",
                                letterSpacing: 2,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      child: Text(
                        "Pakistan",
                        style: TextStyle(
                            fontSize: 43,
                            fontFamily: "ShinyBalloonDemo",
                            letterSpacing: 2,
                            color: Colors.green),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.5 - 30,
                      child: Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            HeroContainer("assets/sports.jpeg",
                                "National Sports Heroes", HeroesScreen(2)),
                            HeroContainer("assets/army.jpeg", "Defence Heroes",
                                HeroesScreen(2)),
                            HeroContainer("assets/nusrat.jpg", "Entertainment",
                                HeroesScreen(2)),
                            HeroContainer("assets/iqbal3.jpeg",
                                "Poets and Writers", HeroesScreen(2)),
                            HeroContainer("assets/jinnah.jpeg",
                                "Independance Heroes", HeroesScreen(2)),
                            HeroContainer("assets/aqkhan1.jpeg",
                                "Science & Technology", HeroesScreen(2)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height / 5,
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Center(
                        child: Text(
                          "“With faith, discipline and selfless devotion to duty, there is nothing worthwhile that you cannot achieve.“",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "BubblegumSans",
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height / 5,
                      margin: EdgeInsets.only(top: 10),
                      child: Center(
                        child: Text(
                          "―Muhammad Ali Jinnah",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "BubblegumSans",
                              letterSpacing: 2,
                              color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroContainer extends StatelessWidget {
  late String imgName;
  late String heading;

  final Widget pageToShow;

  HeroContainer(String imgName, String heading, this.pageToShow) {
    this.imgName = imgName;
    this.heading = heading;
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
          margin: EdgeInsets.only(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 12.4,
              right: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Image(
                    image: AssetImage(
                      imgName,
                    ),
                    fit: BoxFit.cover,
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    colorBlendMode: BlendMode.softLight,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(197, 245, 127, 23),
                        borderRadius: BorderRadius.circular(12)),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Center(
                      child: Text(heading,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "BubblegumSans",
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
