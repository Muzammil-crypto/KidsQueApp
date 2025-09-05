// Dio import removed for offline static app
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/heroModel.dart';

import 'package:sign_in_interface/Screens/hero_categories.dart';
import 'package:sign_in_interface/Screens/heroesDetail.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

import '../Widgets/heroCard.dart';
// Removed Dio import for offline static app

// ignore: must_be_immutable
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
  List<HeroModel> heroModelList = [
    HeroModel()
      ..title = "Quaid-e-Azam Muhammad Ali Jinnah"
      ..duration = "1876-1948"
      ..description =
          "Founder of Pakistan, known for his leadership and vision."
      ..image = "assets/jinnah.jpeg",
    HeroModel()
      ..title = "Allama Iqbal"
      ..duration = "1877-1938"
      ..description =
          "Poet of the East, philosopher, and inspiration for Pakistan."
      ..image = "assets/iqbal2.jpeg",
    HeroModel()
      ..title = "Fatima Jinnah"
      ..duration = "1893-1967"
      ..description =
          "Mother of the Nation, played a vital role in Pakistan's independence."
      ..image = "assets/jinnah.jpeg",
    HeroModel()
      ..title = "Sir Syed Ahmad Khan"
      ..duration = "1817-1898"
      ..description =
          "Educator and reformer, founder of Aligarh Muslim University."
      ..image = "assets/nusrat.jpg",
    // Add more kid-friendly Pak Studies heroes as needed
  ];

  @override
  void initState() {
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
                                  return HeroCard(
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

  // Removed getData() and network logic. Using local mock data above.
}
