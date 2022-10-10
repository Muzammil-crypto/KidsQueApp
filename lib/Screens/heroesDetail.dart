import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

// ignore: must_be_immutable
class DetailsHeroScreen extends StatefulWidget {
  late String imgName;
  late String heading;
  late Color color1;
  late Color color2;
  late String description;
  DetailsHeroScreen(
    String imgName,
    String heading,
    Color color1,
    Color color2,
    this.description,
    //  this.tag,
  ) {
    this.imgName = imgName;
    this.heading = heading;
    this.color1 = color1;
    this.color2 = color2;
  }

  @override
  State<DetailsHeroScreen> createState() => _DetailsHeroScreenState();
}

class _DetailsHeroScreenState extends State<DetailsHeroScreen> {
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

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //   tag: tag,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.8,
                    child: Image.network(widget.imgName),
                  ),
                  Stack(children: [
                    Positioned(
                      child: Center(
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    widget.heading,
                                    style: TextStyle(
                                        fontFamily: "ShinyballoonDemo",
                                        fontSize: 25,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    widget.description,
                                    style: TextStyle(
                                        fontFamily: "BubblegumSans",
                                        fontSize: 16,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 2.2,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      right: 50,
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
                                          : speak(widget.description);
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
                  ]),
                ],
              ),
              Positioned(
                top: 50,
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
            ],
          ),
        ),
      ),
    );
  }
}
