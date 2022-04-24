import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade900,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: IconButton(
                                  onPressed: () => {},
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 20,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "Explore the History",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontFamily: "BubblegumSans",
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        margin: EdgeInsets.only(top: 130, right: 5, left: 5),
                        height: MediaQuery.of(context).size.height * 2,
                        width: MediaQuery.of(context).size.width,
                        child: Timeline(
                          children: <TimelineModel>[
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3dABDzZ3cyuuz-pl-GmGJWebKbcx3rqw6Q&usqp=CAU"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "Dr. Allama Muhammad Iqbal",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.cyan,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a6Nw3m_M9kZSRxSKrMQXHCotvnnFilAr9w&usqp=CAU"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "General. Pervaiz Musharraf",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.generating_tokens_outlined),
                              iconBackground: Colors.green,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://ournationalheroes.com/wp-content/uploads/2021/04/Untitled-1-1.png"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Quid e Azam Muhammad Ali Jinnah",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.red,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Liaqat Ali Khan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.brown,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Liaqat Ali Khan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.orange,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Liaqat Ali Khan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.blueAccent,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Liaqat Ali Khan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.blueGrey,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height / 4.8,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Colors.black12,
                                ),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Colors.green,
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              11,
                                      width: 100,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125"),
                                        radius: 10,
                                      ),
                                    ),
                                    Text(
                                      "1947-2012",
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: "Flavors"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      // height: MediaQuery.of(context).size.height / 11,
                                      child: Text(
                                        "Liaqat Ali Khan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "BubblegumSans"),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                )),
                              ),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.left,
                            ),
                          ],
                          position: TimelinePosition.Center,
                          iconSize: 40,
                          lineColor: Colors.blue,
                        ) //TimelinePage(title: 'Muslim Civilisation Doodles'),
                        ,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
