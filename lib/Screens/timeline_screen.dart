import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/content_Screen.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/timelineCard.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        // child: SingleChildScrollView(
        child: Stack(
          children: [
            // Positioned(
            //   top: 10,
            //   child: Center(
            //     child: Container(
            //       height: MediaQuery.of(context).size.height / 6,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //         color: Colors.yellow.shade900,
            //       ),
            //       child: Row(
            //         children: [
            //           Container(
            //             width: MediaQuery.of(context).size.width,
            //             child: Center(
            //               child: Text(
            //                 "Explore the History",
            //                 style: TextStyle(
            //                     fontSize: 28,
            //                     fontFamily: "ShinyBalloonDemo",
            //                     color: Colors.white),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 0,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "All About",
                                style: TextStyle(
                                    letterSpacing: 6,
                                    fontSize: 40,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                              Text(
                                "Pakistan",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    margin: EdgeInsets.only(top: 220, right: 5, left: 5),
                    height: MediaQuery.of(context).size.height * 2,
                    width: MediaQuery.of(context).size.width,
                    child: Timeline(
                      children: <TimelineModel>[
                        TimelineModel(
                          getTimeline(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3dABDzZ3cyuuz-pl-GmGJWebKbcx3rqw6Q&usqp=CAU",
                              "Allama Muhammad Iqbal",
                              "1970-1975",
                              ContentScreen(),
                              Colors.teal),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.right,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://c8.alamy.com/comp/A7KR0G/pakistan-general-mohammed-zia-ul-haq-president-zia-A7KR0G.jpg",
                              "General Zia-ul-haq",
                              "1970-1975",
                              ContentScreen(),
                              Colors.cyan),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.left,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125",
                              "Liaqat Ali Khan",
                              "1970-1975",
                              ContentScreen(),
                              Colors.purple),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.right,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a6Nw3m_M9kZSRxSKrMQXHCotvnnFilAr9w&usqp=CAU",
                              "General Pervaiz Musharraf",
                              "1970-1975",
                              ContentScreen(),
                              Colors.orange.shade900),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.left,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://ournationalheroes.com/wp-content/uploads/2021/04/Untitled-1-1.png",
                              "Quid e Azam Muhammad Ali Jinnah",
                              "1970-1975",
                              ContentScreen(),
                              Colors.indigo),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.right,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://www.seekpng.com/png/detail/127-1270162_benazir-bhutto-png-images-benazir-bhutto.png",
                              "Benazir Bhutto",
                              "1970-1975",
                              ContentScreen(),
                              Colors.green),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.left,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://img.etimg.com/thumb/width-1200,height-900,imgsize-77615,resizemode-1,msid-44856323/news/international/world-news/pakistan-government-wants-peace-within-and-outside-borders-nawaz-sharif.jpg",
                              "Mian Muhammad Nawaz Shareef",
                              "1970-1975",
                              ContentScreen(),
                              Colors.purple),
                          icon: Icon(Icons.history_edu_outlined),
                          iconBackground: Colors.pink,
                          position: TimelineItemPosition.right,
                        ),
                        TimelineModel(
                          getTimeline(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHQRVOoU49C_KypojIvmthXuO3EZ_e0fkcAOzScmWbGDk_SXpt4EgSHql7l4IBjvLlm7s&usqp=CAU",
                              "Imran Khan",
                              "1970-1975",
                              ContentScreen(),
                              Colors.teal),
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
              ),
            ),
            Positioned(
                top: 50,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(101, 255, 255, 255),
                      borderRadius: BorderRadius.circular(7)),
                  //  height: MediaQuery.of(context).size.height / 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: Colors.white,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomepageScreen(),
                        ),
                      ),
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
