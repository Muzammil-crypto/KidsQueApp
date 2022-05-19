import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/screens/home_screen.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';
import 'package:sign_in_interface/Screens/slider.dart';
import 'package:sign_in_interface/Screens/splash_screen.dart';
import 'package:sign_in_interface/Widgets/youtube_player_screen.dart';

import '../Widgets/Clipper.dart';

class ContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.cyan),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 0.662,
                    child: Center(
                      child: Container(
                        child: SliderBanner(),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //         fit: BoxFit.fill,
                        //         image: NetworkImage(
                        //             "https://media.istockphoto.com/photos/lahore-fort-shahi-fort-lahore-picture-id833093782?b=1&k=20&m=833093782&s=170667a&w=0&h=UuqEfc9B22K0Z8XN3fNRVliGPa9k4Fowm8Ensq_5CjA=")),
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.only(
                        //         bottomLeft: Radius.circular(40),
                        //         bottomRight: Radius.circular(40))),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2.4,
                    child: Column(
                      children: [
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Text(
                                      "Lahore Fort",
                                      style: TextStyle(
                                          fontFamily: "ShinyBalloonDemo",
                                          fontSize: 45,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan, The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan",
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans",
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width / 1.15,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(212, 255, 142, 142),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Text(
                                "Related Video",
                                style: TextStyle(
                                    fontFamily: "ShinyBalloonDemo",
                                    fontSize: 40,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 0.96,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3.4,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: YoutubeScreen(
                              title: "Video",
                              url: "https://youtu.be/qcGTPMj63Aw",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 0.72,
                      child: Container(
                          child: Text(
                        "Related Places",
                        style: TextStyle(
                            fontFamily: "ShinyBalloonDemo",
                            fontSize: 40,
                            color: Colors.white),
                      ))),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 0.67,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: SizedBox(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 120,
                              width: 120.0,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHBVFSOJ6Ll438ccvbWTFPFBkDeITdUfoPOA&usqp=CAU")),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 120,
                              width: 120.0,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://www.explorerpakistan.com/wp-content/uploads/2019/09/1-lahore-fort-800x445.jpg")),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 120,
                              width: 120.0,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://media.istockphoto.com/photos/wazir-khan-mosque-lahore-pakistan-picture-id1130761760?k=20&m=1130761760&s=612x612&w=0&h=OPX8vVKJnwaAASLUO23nVm0ysAp8k5mugGfbu0XuJyg=")),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 120,
                              width: 120.0,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://pbs.twimg.com/media/DN0CNlDWkAIbhBf.jpg")),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 120,
                              width: 120.0,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHBVFSOJ6Ll438ccvbWTFPFBkDeITdUfoPOA&usqp=CAU")),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 10,
                    child: SingleChildScrollView(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizSplashScreen()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: const BoxDecoration(
                            color: Color(0xFFF57F17),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 320.0,
                                minHeight:
                                    40.0), // min sizes for Material buttons
                            alignment: Alignment.center,
                            child: const Text(
                              'Visit the Place',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
