import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/Login1.dart';
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 8),
              child: Text(
                "Heroes of the",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "BubblegumSans",
                    letterSpacing: 2,
                    color: Colors.pink),
              ),
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
              child: HeroCard(),
            ),
          ],
        ),
      ),
    );
  }
}
