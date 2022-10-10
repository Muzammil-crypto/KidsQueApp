import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:sign_in_interface/Models/cityModel.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_category.dart';
import 'package:sign_in_interface/Screens/slider.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Widgets/youtube_player_screen.dart';

// ignore: must_be_immutable
class CityDetails extends StatefulWidget {
  String id;
  CityDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<CityDetails> createState() => _CityDetailsState();
}

class _CityDetailsState extends State<CityDetails> {
  FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;

  CityModel cityModel = CityModel();

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool isLoading = true;

  speak(String Text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    // await flutterTts.speak(Text);

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
                    height: MediaQuery.of(context).size.height * 1.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 1.3,
                          child: Center(
                            child: Container(
                              child: SliderBanner(
                                imageList: cityModel.images,
                              ),
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width,
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
                                            "${cityModel.title}",
                                            style: TextStyle(
                                                fontFamily: "ShinyBalloonDemo",
                                                fontSize: 45,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            cityModel.description!,
                                            style: TextStyle(
                                                fontFamily: "BubblegumSans",
                                                fontSize: 24,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height / 2.1,
                                  width:
                                      MediaQuery.of(context).size.width / 1.15,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(212, 255, 142, 142),
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
                        Positioned(
                          bottom: MediaQuery.of(context).size.height / 2 + 360,
                          right: 45,
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(200, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: ElevatedButton(
                                    onPressed: () => {
                                          setState(() {
                                            isPlaying
                                                ? _stop()
                                                : speak(cityModel.description!);
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
                                          )),
                              )),
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
                                    url: cityModel.videoLink.toString(),
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
                                  InkWell(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHBVFSOJ6Ll438ccvbWTFPFBkDeITdUfoPOA&usqp=CAU")),
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 1.toString(),
                                                  ))),
                                    },
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 2.toString(),
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0PsjXKeZX9FM2UH8_f1zcH-Etn9wjCIkdgg&usqp=CAU")),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 2.toString(),
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/736x/6e/91/c8/6e91c818a5b851dd1317d1324001f325.jpg")),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/236x/f6/81/e4/f681e4f40aee373487fdf6e1fd55c103--peshawar-pakistan-colleges.jpg")),
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 4.toString(),
                                                  ))),
                                    },
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 3.toString(),
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/550x/ae/08/ff/ae08ffb5718c0db63795c114e68b8242.jpg")),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 5.toString(),
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://wallpaperaccess.com/full/4005177.jpg")),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CityDetails(
                                                    id: 6.toString(),
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/736x/b0/b2/37/b0b2372222fc7ce36a4849f56dc32aa1.jpg")),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                      color: Color.fromARGB(144, 255, 255, 255),
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
                          bottom: 50,
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
          "https://pakque2.herokuapp.com/api/cities/${widget.id}?populate=*");
      print(response.data);
      cityModel.title = response.data['data']['attributes']["name"];
      cityModel.description =
          response.data['data']['attributes']['description'];
      cityModel.videoLink = response.data['data']['attributes']['Video'] == null
          ? ""
          : response.data['data']['attributes']["Video"];
      response.data["data"]["attributes"]["Image"]["data"] != null
          ? response.data["data"]["attributes"]["Image"]["data"].forEach((e) {
              e["attributes"]["url"] != null
                  ? cityModel.images.add(e["attributes"]["url"])
                  : null;
            })
          : null;

      setState(() {
        isLoading = false;
      });
    } on DioError catch (e) {
      print(e.response);
    }
  }
}
