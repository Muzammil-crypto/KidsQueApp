import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_category.dart';

import 'package:sign_in_interface/Screens/slider.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/youtube_player_screen.dart';

// ignore: must_be_immutable
class ProvinceDetailScreen extends StatefulWidget {
  int id;
  ProvinceDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<ProvinceDetailScreen> createState() => _ProvinceDetailScreenState();
}

class _ProvinceDetailScreenState extends State<ProvinceDetailScreen> {
  FlutterTts flutterTts = FlutterTts();

  bool isPlaying = false;
  speak(String Text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    // await flutterTts.speak(Text);

    if (Text.isNotEmpty) {
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

  RiverModel provinceModel = RiverModel("", "", "");
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
                    height: MediaQuery.of(context).size.height * 1.9,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          bottom: MediaQuery.of(context).size.height / 0,
                          child: Center(
                            child: Container(
                              child: SliderBanner(
                                imageList: provinceModel.images,
                              ),
                              height: MediaQuery.of(context).size.height / 2,
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
                                              "${provinceModel.title}",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "ShinyBalloonDemo",
                                                  fontSize: 35,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              provinceModel.description,
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
                          bottom: MediaQuery.of(context).size.height / 2 + 440,
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
                                                  provinceModel.description);
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
                                    url: provinceModel.videoLink.toString(),
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
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProvinceDetailScreen(
                                                    id: 1,
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://i.pinimg.com/736x/1a/70/5b/1a705b5289275f9a7fa39b8a6614e30f.jpg")),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCiJ3qQwFcgzMMe5KKm14qovLca8fN6LnQZ6uYutnRxDDoHLchCH45lJYdo7YPK5oNyEY&usqp=CAU")),
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProvinceDetailScreen(
                                                    id: 2,
                                                  ))),
                                    },
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProvinceDetailScreen(
                                                    id: 3,
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBXdkl8lavK80Ov_4kbBJecdf-2T4mpCKju_FmcyhxB-ZPojGtP7oXUZLUgFU4RZNQfm4&usqp=CAU")),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProvinceDetailScreen(
                                                    id: 4,
                                                  ))),
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 120,
                                      width: 120.0,
                                      child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://media.istockphoto.com/photos/boat-at-the-beautiful-gawadar-port-harbor-balochistan-picture-id1137143862?k=20&m=1137143862&s=612x612&w=0&h=brJOdhBmwdKK8_Ohv51l4ROiZh7ZyoLoE-qUlD2E_DQ=")),
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
                          bottom: MediaQuery.of(context).size.height / 8,
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
                              child: Container(
                                child: Ink(
                                  //padding: const EdgeInsets.all(0.0),
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
          "https://pakque2.herokuapp.com/api/cultures/${widget.id}?populate=*");
      print(response.data);
      provinceModel.title = response.data['data']['attributes']['name'];
      provinceModel.description =
          response.data['data']['attributes']["description"];
      provinceModel.videoLink =
          response.data['data']['attributes']['video'] == null
              ? ""
              : response.data['data']['attributes']['video'];
      response.data["data"]["attributes"]["Images"]["data"] != null
          ? response.data["data"]["attributes"]["Images"]["data"].forEach((e) {
              e["attributes"]["url"] != null
                  ? provinceModel.images.add(e["attributes"]["url"])
                  : null;
            })
          : null;
      print(provinceModel.images);
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
