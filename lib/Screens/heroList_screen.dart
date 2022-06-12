import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/heroModel.dart';

import 'package:sign_in_interface/Screens/Login1.dart';
import 'package:sign_in_interface/Screens/hero_categories.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Widgets/heroCard_Clipper.dart';
import '../Widgets/heroCard.dart';

class HeroesScreen extends StatefulWidget {
  int id;
  String label;
  HeroesScreen({
    Key? key,
    required this.id,
    required this.label,
  }) : super(key: key);

  @override
  State<HeroesScreen> createState() => _HeroesScreenState();
}

class _HeroesScreenState extends State<HeroesScreen> {
  List<HeroModel> heroModelList = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool isLoading = true;
  @override
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
              child: Scaffold(
                body: Container(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  // right: MediaQuery.of(context).size.width / 1.22,
                                  ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HeroCategory())),
                                },
                              ),
                            ),
                            Container(
                              // height: MediaQuery.of(context).size.height / 5,
                              margin: EdgeInsets.only(top: 80),
                              child: Text(
                                "National Heroes of the",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "BubblegumSans",
                                    letterSpacing: 2,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "History",
                            style: TextStyle(
                                fontSize: 43,
                                fontFamily: "Flavors",
                                letterSpacing: 2,
                                color: Colors.cyan),
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: heroModelList.length,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: HeroCard(
                                      heroModelList[index].image!,
                                      heroModelList[index].title!,
                                      Colors.orange,
                                      Colors.deepOrangeAccent,
                                      DetailsHeroScreen(
                                        heroModelList[index].image!,
                                        heroModelList[index].title!,
                                        Colors.orange,
                                        Colors.deepOrangeAccent,
                                        heroModelList[index].description!,
                                      ),
                                      heroModelList[index].duration!,
                                    ),
                                  );
                                })),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  void getData() async {
    try {
      var response = await Dio().get(
          "https://pakque2.herokuapp.com/api/heroes-categories/${widget.id}?populate=national_heroes.Image");
      // print(
      //     "Data: ${response.data['data']['attributes']["national_heroes"]["data"]}");
      response.data['data']['attributes']["national_heroes"]["data"]
          .forEach((element) {
        HeroModel heroModel = HeroModel();
        heroModel.title = element["attributes"]["Name"];
        heroModel.duration = element["attributes"]["Duration"];
        heroModel.description = element["attributes"]["Description"];
        heroModel.image =
            element["attributes"]["Image"]["data"]["attributes"]['url'] == null
                ? ""
                : element["attributes"]["Image"]["data"]["attributes"]['url'];
        print(heroModel.title);
        heroModelList.add(heroModel);
      });

      setState(() {
        isLoading = false;
      });
    } on DioError catch (e) {
      print(e.response);
    }
  }
}
