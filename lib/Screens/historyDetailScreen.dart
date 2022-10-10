import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:sign_in_interface/Models/historyModel.dart';

import 'package:sign_in_interface/Quiz/lib/screens/quiz_category.dart';

import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/youtube_player_screen.dart';

// ignore: must_be_immutable
class HistoryDetailScreen extends StatefulWidget {
  int id;
  HistoryDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  FlutterTts flutterTts = FlutterTts();

  bool isPlaying = false;
  speak(String Text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);

    // ignore: unnecessary_null_comparison
    if (Text != null && Text.isNotEmpty) {
      var result = await flutterTts.speak(Text);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }

  Future _stop() async {
    var result = await flutterTts.stop();
    if (result == 1)
      setState(() {
        isPlaying = false;
      });
  }

  HistoryModel historyModel = HistoryModel("", "", "");
  bool isLoading = true;
  bool isFound = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: isLoading
          ? Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width / 0.5,
                child: Image(
                  image: AssetImage("assets/ani34.gif"),
                ),
              ),
            )
          : ClipPath(
              clipper: BackgroundClipper(),
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          child: Center(
                            child: Container(
                              child: Image(
                                image: NetworkImage(historyModel.images),
                                fit: BoxFit.contain,
                              ),
                              height: MediaQuery.of(context).size.height / 2.3,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        Container(
                          child: Positioned(
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
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "${historyModel.title}",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "ShinyBalloonDemo",
                                                  fontSize: 35,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              historyModel.description!,
                                              style: TextStyle(
                                                  fontFamily: "BubblegumSans",
                                                  fontSize: 24,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height /
                                        2.1,
                                    width: MediaQuery.of(context).size.width /
                                        1.15,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(212, 255, 142, 142),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
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
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height / 2 + 125,
                          right: 40,
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(200, 255, 255, 255),
                              ),
                              child: ElevatedButton(
                                  onPressed: () => {
                                        setState(() {
                                          isPlaying
                                              ? _stop()
                                              : speak(
                                                  historyModel.description!);
                                        })
                                      },
                                  child: isPlaying
                                      ? Icon(
                                          Icons.stop,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                      : Icon(
                                          Icons.play_arrow,
                                          color: Colors.green,
                                          size: 30,
                                        ))),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height / 0.96,
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.4,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: YoutubeScreen(
                                    title: "Video",
                                    url: historyModel.videoLink.toString(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 10,
                          child: Row(
                            children: [
                              Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(136, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      onPressed: () => {
                                        Navigator.pop(context),
                                      },
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height / 15,
                          child: SingleChildScrollView(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuizCategoryScreen()));
                              },
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(80.0)),
                              // padding: const EdgeInsets.all(0.0),
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
                                    'Take Quiz',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "BubblegumSans",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22),
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

  void getData() async {
    try {
      var response = await Dio().get(
          "https://pakque2.herokuapp.com/api/histories/${widget.id}?populate=*");
      print(response.data);
      historyModel.title = response.data['data']['attributes']['Title'];
      historyModel.description =
          response.data['data']['attributes']["Description"];
      historyModel.videoLink =
          response.data['data']['attributes']['Video'] == null
              ? ""
              : response.data['data']['attributes']['Video'];
      historyModel.images =
          response.data["data"]["attributes"]["Image"]["data"] != null
              ? response.data["data"]["attributes"]["Image"]["data"]
                  ["attributes"]["url"]
              : null;
      print("this is URL" + historyModel.images);
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
        isFound = false;
      });
    }
  }
}
