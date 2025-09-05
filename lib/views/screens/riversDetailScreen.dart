// Dio import removed for offline static app
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../../models/provinceModel.dart';
import '../Screens/quiz/quiz_category.dart';
import '../Screens/slider.dart';
import '../Widgets/background_Clipper.dart';
import '../Widgets/youtube_player_screen.dart';

// ignore: must_be_immutable
class RiverDetailScreen extends StatefulWidget {
  int id;
  RiverDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<RiverDetailScreen> createState() => _RiverDetailScreenState();
}

class _RiverDetailScreenState extends State<RiverDetailScreen> {
  FlutterTts flutterTts = FlutterTts();

  bool isPlaying = false;
  speak(String Text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);

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

  RiverModel riverModel = RiverModel("", "", "");
  bool isLoading = true;
  bool isFound = true;
  @override
  void initState() {
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
                                imageList: riverModel.images,
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
                                              "${riverModel.title}",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "ShinyBalloonDemo",
                                                  fontSize: 35,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              riverModel.description,
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
                                              : speak(riverModel.description);
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
                                    url: riverModel.videoLink.toString(),
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
                                        backgroundImage:
                                            AssetImage("assets/indus.png")),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 120,
                                    width: 120.0,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/lahore.png")),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 120,
                                    width: 120.0,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/jhelum.png")),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 120,
                                    width: 120.0,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/ravi.jpg")),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 120,
                                    width: 120.0,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/sindh.png")),
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
  //${widget.id}    https://pakque2.herokuapp.com/api/cultures/${widget.id}?populate=*

  // Removed getData() and network logic. Use local mock data in initState.
}
