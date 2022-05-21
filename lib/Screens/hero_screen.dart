import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/hero_categories.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';

import '../Widgets/Clipper3.dart';
import '../Widgets/heroCard.dart';

class HeroesScreen extends StatelessWidget {
  int topicId = 2;
  HeroesScreen(this.topicId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Scaffold(
          body: Container(
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
                                    builder: (context) => HeroCategory())),
                          },
                        ),
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height / 5,
                        margin: EdgeInsets.only(top: 80),
                        child: Text(
                          "National Heroes of the",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "BubblegumSans",
                              letterSpacing: 2,
                              color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "History",
                      style: TextStyle(
                          fontSize: 43,
                          fontFamily: "Flavors",
                          letterSpacing: 2,
                          color: Colors.cyan),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: HeroCard(
                              "assets/majj.png",
                              "Major Aziz Bhatti",
                              Colors.orange,
                              Colors.deepOrangeAccent,
                              DetailsHeroScreen(
                                  "assets/majj.png",
                                  "Major Aziz Bhatti (Shaheed)",
                                  Colors.orange,
                                  Colors.deepOrangeAccent,
                                  "Major Raja Aziz Bhatti (Urdu: راجہ عزیز بھٹی  b. 6 August 1928– 12 September 1965),[2] born as Aziz Ahmad: 177 [3] but usually known as Raja Aziz Bhatti, was a military officer in the Pakistan Army who was cited with the Nishan-e-Haider (Eng. Lit.: Emblem of Lion) for his actions of valor during the Battle of Burki in second war with India in 1965.",
                                  "background"),
                              "1997-2020",
                              "background"),
                        ),
                        // Container(
                        //   height: MediaQuery.of(context).size.height,
                        //   width: MediaQuery.of(context).size.width,
                        //   child: HeroCard(
                        //       "assets/majj.png",
                        //       "Major Aziz Bhatti",
                        //       Colors.orange,
                        //       Colors.deepOrangeAccent,
                        //       DetailsHeroScreen(
                        //           "assets/majj.png",
                        //           "Major Aziz Bhatti (Shaheed)",
                        //           Colors.orange,
                        //           Colors.deepOrangeAccent,
                        //           "Major Raja Aziz Bhatti (Urdu: راجہ عزیز بھٹی  b. 6 August 1928– 12 September 1965),[2] born as Aziz Ahmad: 177 [3] but usually known as Raja Aziz Bhatti, was a military officer in the Pakistan Army who was cited with the Nishan-e-Haider (Eng. Lit.: Emblem of Lion) for his actions of valor during the Battle of Burki in second war with India in 1965.",
                        //           "background"),
                        //       "1997-2020",
                        //       "background"),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
