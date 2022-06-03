import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/content_Screen.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
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
                                  onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => Topics()),
                                          ),
                                        )
                                      },
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
                              getTimeline(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3dABDzZ3cyuuz-pl-GmGJWebKbcx3rqw6Q&usqp=CAU",
                                  "Allama Muhammad Iqbal",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://c8.alamy.com/comp/A7KR0G/pakistan-general-mohammed-zia-ul-haq-president-zia-A7KR0G.jpg",
                                  "General Zia-ul-haq",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125",
                                  "Liaqat Ali Khan",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a6Nw3m_M9kZSRxSKrMQXHCotvnnFilAr9w&usqp=CAU",
                                  "General Pervaiz Musharraf",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://ournationalheroes.com/wp-content/uploads/2021/04/Untitled-1-1.png",
                                  "Quid e Azam Muhammad Ali Jinnah",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://www.seekpng.com/png/detail/127-1270162_benazir-bhutto-png-images-benazir-bhutto.png",
                                  "Benazir Bhutto",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.left,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://img.etimg.com/thumb/width-1200,height-900,imgsize-77615,resizemode-1,msid-44856323/news/international/world-news/pakistan-government-wants-peace-within-and-outside-borders-nawaz-sharif.jpg",
                                  "Mian Muhammad Nawaz Shareef",
                                  "1970-1975",
                                  ContentScreen()),
                              icon: Icon(Icons.history_edu_outlined),
                              iconBackground: Colors.pink,
                              position: TimelineItemPosition.right,
                            ),
                            TimelineModel(
                              getTimeline(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHQRVOoU49C_KypojIvmthXuO3EZ_e0fkcAOzScmWbGDk_SXpt4EgSHql7l4IBjvLlm7s&usqp=CAU",
                                  "Imran Khan",
                                  "1970-1975",
                                  ContentScreen()),
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

class getTimeline extends StatelessWidget {
  late String imgName;
  late String heading;
  late String date;
  final Widget pageToShow;
  getTimeline(String imgName, String heading, String date, this.pageToShow) {
    this.imgName = imgName;
    this.heading = heading;
    this.date = date;
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
          child: Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 4.8,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
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
                  height: MediaQuery.of(context).size.height / 11,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imgName),
                    radius: 10,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 10, fontFamily: "Flavors"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  // height: MediaQuery.of(context).size.height / 11,
                  child: Text(
                    heading,
                    style: TextStyle(fontSize: 12, fontFamily: "BubblegumSans"),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
