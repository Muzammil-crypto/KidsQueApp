import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/ProvincesListScreen.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import 'MapScreen.dart';

class CitiesListScreen extends StatelessWidget {
  const CitiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow.shade900,
        body: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            child: Stack(children: [
              Positioned(
                  child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Container(
                      // height: MediaQuery.of(context).size.height / 5,
                      child: Text(
                        "Major Cities of",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "BubblegumSans",
                            letterSpacing: 3,
                            color: Colors.green),
                      ),
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
                  ],
                ),
              )),
              Positioned(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProvinceDetails(
                          "assets/c1.png",
                          "Karachi",
                          Colors.pinkAccent,
                          Colors.deepOrangeAccent,
                          "Karachi is the largest city in Pakistan and the twelfth-largest city in the world. It is the capital of the Pakistani province of Sindh. Ranked as a beta-global city, it is Pakistan's premier industrial and financial centre.",
                          MapScreen(
                            label: "city",
                            lat: 25.31664378584215,
                            long: 67.02999062754044,
                            id: 4,
                            infoWindowTitle: "Karachi",
                            infoWindowDes:
                                "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
                          )),
                      ProvinceDetails(
                          "assets/c2.png",
                          // "assets/c7.png",
                          "Lahore",
                          Colors.red,
                          Colors.deepOrange,
                          "Lahore is the capital of the Pakistani province of Punjab, is Pakistan's 2nd largest city, and is the 26th largest city in the world. Lahore is one of Pakistan's wealthiest cities.",
                          MapScreen(
                            label: "city",
                            lat: 31.859583967375077,
                            long: 74.23925683546577,
                            id: 1,
                            infoWindowTitle: "Lahore",
                            infoWindowDes:
                                "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
                          )),
                      ProvinceDetails(
                          "assets/c4.png",
                          "Islamabad",
                          Colors.deepPurple,
                          Colors.cyan,
                          "Islamabad is the capital city of Pakistan, and is administered by the Pakistani federal government as part of the Islamabad Capital Territory. It is the ninth-largest city in Pakistan, while the larger Islamabad–Rawalpindi metropolitan area is the country's third-largest with a population of about 4.1 million people.",
                          MapScreen(
                            label: "city",
                            lat: 34.11137541059898,
                            long: 73.0708585190089,
                            id: 2,
                            infoWindowTitle: "Islamabad",
                            infoWindowDes:
                                "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
                          )),
                      ProvinceDetails(
                          "assets/c6.png",
                          "Multan",
                          // Colors.teal,
                          // Colors.cyan,
                          Color.fromARGB(255, 0, 78, 3),
                          Colors.teal,
                          "Multan is a city and capital of Multan Division located in Punjab, Pakistan. Situated on the bank of the Chenab River, Multan is Pakistan's 7th largest city and is the major cultural and economic centre of Southern Punjab. Multan's history stretches deep into antiquity.",
                          MapScreen(
                            label: "city",
                            lat: 30.60548538432997,
                            long: 71.52956712283178,
                            id: 3,
                            infoWindowTitle: "Multan",
                            infoWindowDes:
                                "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
                          )),
                      ProvinceDetails(
                          "assets/c5.png",
                          "Peshawar",
                          Colors.teal,
                          Colors.cyan,
                          // Colors.green,
                          // Colors.tealAccent,
                          "Peshawar is the capital of the Pakistani province of Khyber Pakhtunkhwa and its largest city. It is the sixth-largest city in Pakistan, and the largest Pashtun-majority city in the country.",
                          MapScreen(
                            label: "city",
                            lat: 34.46055187756329,
                            long: 71.47984804553573,
                            id: 4,
                            infoWindowTitle: "Peshawar",
                            infoWindowDes:
                                "Peshawar is one of the four cities of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
                          )),
                    ]),
              ),
              Positioned(
                  top: 15,
                  left: 15,
                  child: GestureDetector(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(99, 128, 124, 124),
                          borderRadius: BorderRadius.circular(7)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomepageScreen())),
                    },
                  )),
              Positioned(
                  bottom: 10,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: 8,
                          right: 10,
                        ),
                        child: Center(
                          child: Text(
                            "“Nations are born in the hearts of poets, they prosper and die in the hands of politicians.”",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "BubblegumSans",
                                letterSpacing: 2,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,

                        // height: MediaQuery.of(context).size.height / 5,
                        margin: EdgeInsets.only(top: 5),
                        child: Center(
                          child: Text(
                            "―Dr. Allama Muhammad Iqbal ",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "BubblegumSans",
                                letterSpacing: 2,
                                color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ))
            ]),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
