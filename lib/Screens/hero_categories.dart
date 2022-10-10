import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Screens/heroList_screen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/heroListCard.dart';

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
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(94, 65, 64, 64),
                              borderRadius: BorderRadius.circular(7)),
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomepageScreen())),
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
                      child: Container(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            HeroContainer(
                                imgName: "assets/sports.jpeg",
                                heading: "National Sports Heroes",
                                pageToShow: HeroesScreen(
                                  id: 3,
                                  label: "heroes",
                                )),
                            HeroContainer(
                                imgName: "assets/army.jpeg",
                                heading: "Defence Heroes",
                                pageToShow:
                                    HeroesScreen(id: 4, label: "heroes")),
                            HeroContainer(
                                imgName: "assets/nusrat.jpg",
                                heading: "Entertainment",
                                pageToShow:
                                    HeroesScreen(id: 6, label: "heroes")),
                            HeroContainer(
                                imgName: "assets/iqbal3.jpeg",
                                heading: "Poets and Writers",
                                pageToShow:
                                    HeroesScreen(id: 5, label: "heroes")),
                            HeroContainer(
                                imgName: "assets/jinnah.jpeg",
                                heading: "Independance Heroes",
                                pageToShow:
                                    HeroesScreen(id: 1, label: "heroes")),
                            HeroContainer(
                                imgName: "assets/aqkhan1.jpeg",
                                heading: "Science & Technology",
                                pageToShow:
                                    HeroesScreen(id: 2, label: "heroes")),
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
