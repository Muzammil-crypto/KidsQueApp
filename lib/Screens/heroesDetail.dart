import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DetailsHeroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'background',
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.deepOrangeAccent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: Image.asset("majj.png"),
                ),
                Column(children: [
                  Container(
                    child: Container(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "Major Aziz Bhatii (Shaheed)",
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                              Text(
                                "Major Raja Aziz Bhatti (Urdu: راجہ عزیز بھٹی  b. 6 August 1928– 12 September 1965),[2] born as Aziz Ahmad: 177 [3] but usually known as Raja Aziz Bhatti, was a military officer in the Pakistan Army who was cited with the Nishan-e-Haider (Eng. Lit.: Emblem of Lion) for his actions of valor during the Battle of Burki in second war with India in 1965.",
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 16,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
