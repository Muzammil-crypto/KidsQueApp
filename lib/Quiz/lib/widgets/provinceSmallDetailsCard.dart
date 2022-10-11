import 'package:flutter/material.dart';

class ProvinceSmallDetailsCard extends StatelessWidget {
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;

  late String description;
  final Widget pageToShow;
  ProvinceSmallDetailsCard(
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
