import 'package:flutter/material.dart';

// ignore: must_be_immutable
class getContainer extends StatelessWidget {
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;

  final Widget pageToShow;

  getContainer(String imgName, String heading, Color color1, Color color2,
      this.pageToShow) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
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
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 40,
                    left: 30,
                    right: 30,
                    bottom: 5),
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width / 1.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(colors: [color1, color2]),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: MediaQuery.of(context).size.width / 2.6,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage(imgName),
                            height: MediaQuery.of(context).size.height / 5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 40),
                                child: Text(
                                  this.heading,
                                  style: TextStyle(
                                      fontFamily: "BubblegumSans",
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              //   color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  height: 35,
                                  width: 90,
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    shadowColor: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "Visit the Topic",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontFamily: "BubblegumSans"),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(left: 60),
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    shadowColor: Colors.white,
                                    child: Center(
                                        child: Icon(
                                      Icons.menu_book_sharp,
                                      color: Colors.black,
                                    )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  // overflow: Overflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
