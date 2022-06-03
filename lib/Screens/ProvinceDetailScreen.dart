import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_splash_screen.dart';
import 'package:sign_in_interface/Screens/AnimateChoices.dart';
import 'package:sign_in_interface/Screens/slider.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';
import 'package:sign_in_interface/Widgets/youtube_player_screen.dart';

class ProvinceDetailScreen extends StatefulWidget {
  int id;
  ProvinceDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ProvinceDetailScreen> createState() => _ProvinceDetailScreenState();
}

class _ProvinceDetailScreenState extends State<ProvinceDetailScreen> {
  ProvinceModel provinceModel = ProvinceModel("", "", "");
  bool isLoading = true;
  bool isFound = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Topics()));
          },
        ),
        automaticallyImplyLeading: true,
      ),
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
                              child: SliderBanner(
                                imageList: provinceModel.images,
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
                                            "${provinceModel.title}",
                                            style: TextStyle(
                                                fontFamily: "ShinyBalloonDemo",
                                                fontSize: 45,
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
