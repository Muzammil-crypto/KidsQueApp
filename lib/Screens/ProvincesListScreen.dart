import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';

import 'MapScreen.dart';

class ProvincesListScreen extends StatefulWidget {
  const ProvincesListScreen({Key? key}) : super(key: key);

  @override
  State<ProvincesListScreen> createState() => _ProvincesListScreenState();
}

class _ProvincesListScreenState extends State<ProvincesListScreen> {
  List<ProvinceModel> provinceList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(children: [
            Positioned(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProvinceDetails(
                        "assets/punj1.png",
                        "Punjab",
                        Colors.red,
                        Colors.deepOrangeAccent,
                        "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                        MapScreen(
                          label: "Province",
                          lat: 31.335379848825273,
                          long: 72.7280952624079,
                          id: 1,
                        )),
                    ProvinceDetails(
                        "assets/sindh.png",
                        "Sindh",
                        Colors.deepPurple,
                        Colors.cyan,
                        "Sindh is one of the four provinces of Pakistan. Located in the southeastern region of the country, Sindh is the third-largest province of Pakistan by total area and the second-largest province by population after Punjab.",
                        MapScreen(
                          label: "Province",
                          lat: 26.36127443787428,
                          long: 68.48155098358325,
                          id: 2,
                        )),
                    ProvinceDetails(
                        "assets/p4.png",
                        "khyber pakhtunkhwa",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Khyber Pakhtunkhwa, often abbreviated as KPK or KP, is a province of Pakistan. It is located in the northwestern region of the country, along the Afghanistan–Pakistan border and close to Tajikistan border.",
                        MapScreen(
                          label: "Province",
                          lat: 35.328121934776334,
                          long: 72.32469792112319,
                          id: 3,
                        )),
                    ProvinceDetails(
                        "assets/baloch.png",
                        "Balochistan",
                        Colors.pinkAccent,
                        Colors.deepOrangeAccent,
                        "Balochistan is one of the four provinces of Pakistan. It is the largest province in terms of land area, forming the southwestern region of the country, but is the least populated. Its provincial capital and largest city is Quetta.",
                        MapScreen(
                          label: "Province",
                          lat: 29.00934280813528,
                          long: 65.09094661299501,
                          id: 4,
                        )),
                    ProvinceDetails(
                        "assets/p5.png",
                        "Gilgit Baltistan",
                        Colors.teal,
                        Colors.cyan,
                        // Colors.green,
                        // Colors.tealAccent,
                        "Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an autonomous territory, and constituting the northern portion of the larger Kashmir region which has been the subject of a dispute between India and Pakistan since 1947, and between India and China from somewhat later.",
                        MapScreen(
                          label: "Province",
                          lat: 36.14435020478446,
                          long: 75.05962161085037,
                          id: 1,
                        )),
                  ]),
            ),
            Positioned(
                top: 40,
                left: 35,
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomepageScreen())),
                  },
                )),
          ]),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

class ProvinceDetails extends StatelessWidget {
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;

  late String description;
  final Widget pageToShow;
  ProvinceDetails(
    String imgName,
    String heading,
    Color color1,
    Color color2,
    this.description,
    this.pageToShow,
  ) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: GestureDetector(
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageToShow)),
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 1.1 + 30,
            width: MediaQuery.of(context).size.width / 1.1 + 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 80,
                  ),
                  //margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Image.asset(
                    imgName,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(children: [
                  Container(
                    child: Container(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 50, left: 20, right: 20, bottom: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                heading,
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 45,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade900,
                        borderRadius: BorderRadius.circular(12)),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Center(
                      child: Text("Visit " + heading + " On Map",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "BubblegumSans",
                              color: Colors.white)),
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
