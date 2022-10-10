import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import 'MapScreen.dart';

class ProvincesListScreen extends StatefulWidget {
  const ProvincesListScreen({Key? key}) : super(key: key);

  @override
  State<ProvincesListScreen> createState() => _ProvincesListScreenState();
}

class _ProvincesListScreenState extends State<ProvincesListScreen> {
  List<RiverModel> provinceList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow.shade900,
        //appBar: AppBar(),
        body: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(
                  child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Container(
                      // height: MediaQuery.of(context).size.height / 5,
                      child: Text(
                        "National Provinces of",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "BubblegumSans",
                            letterSpacing: 2,
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
                          "assets/punj1.png",
                          "Punjab",
                          Color.fromARGB(255, 253, 61, 47),
                          Colors.pinkAccent,
                          "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                          MapScreen(
                            label: "Province",
                            lat: 31.335379848825273,
                            long: 72.7280952624079,
                            id: 1,
                            infoWindowTitle: "Punjab",
                            infoWindowDes:
                                "Punjab is one of the four provinces of Pakistan. It has a population of about 110,000,000, according to the 2017 Pakistan Census. It has more people than the rest of Pakistan combined.",
                            infoWindowImage: "assets/lahore.png",
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
                            infoWindowTitle: "Sindh",
                            infoWindowDes:
                                "Though chiefly an agricultural and pastoral province, Sindh has a reputation for textiles, pottery, leatherwork, carpets etc.",
                            infoWindowImage: "assets/lahore.png",
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
                            infoWindowTitle: "khyber pakhtunkhwa",
                            infoWindowDes:
                                "Khyber Pakhtunkhwa, often abbreviated as KPK or KP, is a province of Pakistan. It is located in the northwestern region of the country,",
                            infoWindowImage: "assets/lahore.png",
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
                            infoWindowTitle: "Balochistan",
                            infoWindowDes:
                                "Balochistan is a strategically important province to Pakistan because of the high concentration of natural resources – including oil, coal, gold, copper and gas reserves,",
                            infoWindowImage: "assets/lahore.png",
                          )),
                      ProvinceDetails(
                          "assets/p5.png",
                          "Gilgit Baltistan",
                          Color.fromARGB(255, 0, 138, 156),
                          Colors.indigo,
                          // Colors.green,
                          // Colors.tealAccent,
                          "Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an autonomous territory, and constituting the northern portion of the larger Kashmir region which has been the subject of a dispute between India and Pakistan since 1947, and between India and China from somewhat later.",
                          MapScreen(
                            label: "Province",
                            lat: 36.14435020478446,
                            long: 75.05962161085037,
                            id: 1,
                            infoWindowTitle: "Gilgit Baltistan",
                            infoWindowDes:
                                "Gilgit-Baltistan is home to all five of Pakistan's eight-thousanders and to more than fifty peaks above 7,000 metres (23,000 ft). Gilgit and Skardu are the two main hubs for expeditions to those mountains. ",
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
                      Navigator.pop(context),
                    },
                  )),
              Positioned(
                  bottom: 5,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 8, right: 8, top: 10),
                        child: Center(
                          child: Text(
                            "“You are free; you are free to go to your temples. You are free to go to your mosques or to any other places of worship in this State of Pakistan.“",
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
                        margin: EdgeInsets.only(top: 3),
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
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
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
            margin: EdgeInsets.only(
                top: 90,
                left: MediaQuery.of(context).size.width / 12.4,
                right: 30),
            height: MediaQuery.of(context).size.height / 1.5 - 30,
            width: MediaQuery.of(context).size.width / 1.2 + 50,
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
                    top: 40,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
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
                            top: 30, left: 20, right: 20, bottom: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                heading,
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                    fontFamily: "BubblegumSans",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 4.5,
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
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Center(
                      child: Text("Visit " + heading + " On Map",
                          style: TextStyle(
                              fontSize: 20,
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
