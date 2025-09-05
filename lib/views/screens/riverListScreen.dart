import 'package:flutter/material.dart';
import '../Screens/HomepageScreen.dart';
import '../Widgets/background_Clipper.dart';
import '../Widgets/provinceSmallDetailsCard.dart';
import 'MapScreen.dart';

class RiversListScreen extends StatelessWidget {
  const RiversListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Container(
          child: Stack(children: [
            Positioned(
                child: Center(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Container(
                    child: Text(
                      "Main Rivers of",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "BubblegumSans",
                          letterSpacing: 3,
                          color: Colors.green),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30, top: 5),
                    child: Text(
                      "Pakistan",
                      style: TextStyle(
                          fontSize: 43,
                          fontFamily: "ShinyBalloonDemo",
                          letterSpacing: 2,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            )),
            Positioned(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProvinceSmallDetailsCard(
                        "assets/Ravi.png",
                        "Ravi River",
                        Colors.pinkAccent,
                        Colors.deepOrangeAccent,
                        "The Ravi River is a transboundary river crossing northwestern India and eastern Pakistan. It is one of five rivers associated with the Punjab region. Under the Indus Waters Treaty of 1960.",
                        MapScreen(
                          label: "river",
                          lat: 31.561828622481798,
                          long: 74.2541445347617,
                          id: 3,
                          infoWindowTitle: "Ravi River",
                          infoWindowDes:
                              "The Ravi River is a transboundary river crossing northwestern India and eastern Pakistan. It is one of five rivers associated with the Punjab region. Under the Indus Waters Treaty of 1960.",
                          infoWindowImage: "assets/lahore.png",
                        )),
                    ProvinceSmallDetailsCard(
                        "assets/indus.png",
                        "Indus River",
                        Colors.red,
                        Colors.deepOrange,
                        "The Indus is a transboundary river of Asia and a trans-Himalayan river of South and Central Asia. The 3,180 km river rises in Western Tibet, flows northwest through the disputed region of Kashmir,",
                        MapScreen(
                          label: "river",
                          lat: 30.122230214962187,
                          long: 70.85348085722664,
                          id: 5,
                          infoWindowTitle: "Indus River",
                          infoWindowDes:
                              "The Indus is a transboundary river of Asia and a trans-Himalayan river of South and Central Asia. The 3,180 km river rises in Western Tibet, flows northwest through the disputed region of Kashmir,",
                          infoWindowImage: "assets/lahore.png",
                        )),
                    ProvinceSmallDetailsCard(
                        "assets/jhelum.png",
                        "Jhelum River",
                        Colors.deepPurple,
                        Colors.cyan,
                        "The Jhelum River is a river in the northern Indian subcontinent. It originates at Verinag and flows through the Indian administered territory of Jammu and Kashmir, to the Pakistani-administered territory of Azad Kashmir,",
                        MapScreen(
                          label: "river",
                          lat: 32.96068996986589,
                          long: 73.65663893923265,
                          id: 1,
                          infoWindowTitle: "Jhelum River",
                          infoWindowDes:
                              "The Jhelum River is a river in the northern Indian subcontinent. It originates at Verinag and flows through the Indian administered territory of Jammu and Kashmir, to the Pakistani-administered territory of Azad Kashmir,",
                          infoWindowImage: "assets/lahore.png",
                        )),
                    ProvinceSmallDetailsCard(
                        "assets/chenab.png",
                        "Chenab River",
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "The Chenab River is a major river that flows in India and Pakistan, and is one of the 5 major rivers of the Punjab region. It is formed by the union of two headwaters, Chandra and Bhaga,",
                        MapScreen(
                          label: "river",
                          lat: 31.857865657899577,
                          long: 73.12388585506004,
                          id: 2,
                          infoWindowTitle: "Chenab River",
                          infoWindowDes:
                              "The Chenab River is a major river that flows in India and Pakistan, and is one of the 5 major rivers of the Punjab region. It is formed by the union of two headwaters, Chandra and Bhaga,",
                          infoWindowImage: "assets/lahore.png",
                        )),
                    ProvinceSmallDetailsCard(
                        "assets/satluj.png",
                        "Sutlej River",
                        Colors.teal,
                        Colors.cyan,
                        // Colors.green,
                        // Colors.tealAccent,
                        "The Sutlej or Satluj River is the longest of the five rivers that flow through the historic crossroads region of Punjab in northern India and Pakistan. The Sutlej River is also known as Satadru.",
                        MapScreen(
                          label: "river",
                          lat: 31.017936623664752,
                          long: 74.59434726907297,
                          id: 4,
                          infoWindowTitle: "Sutlej River",
                          infoWindowDes:
                              "The Sutlej or Satluj River is the longest of the five rivers that flow through the historic crossroads region of Punjab in northern India and Pakistan. The Sutlej River is also known as Satadru.",
                          infoWindowImage: "assets/lahore.png",
                        )),
                  ]),
            ),
            Positioned(
                top: 15,
                left: 15,
                child: GestureDetector(
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(99, 128, 124, 124),
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomepageScreen())),
                  },
                )),
            Positioned(
                bottom: 10,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: 8,
                        right: 10,
                      ),
                      child: Center(
                        child: Text(
                          "“Reh Gyi Rasm-e-Azan, Rooh-e-Bilali Na Rahi\nFalsafa Reh Gya, Talqeen-e-Ghazali Na Rahi”",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "BubblegumSans",
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 5),
                      child: Center(
                        child: Text(
                          "―Dr. Allama Muhammad Iqbal ",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "BubblegumSans",
                              letterSpacing: 2,
                              color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ))
          ]),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
    );
  }
}
