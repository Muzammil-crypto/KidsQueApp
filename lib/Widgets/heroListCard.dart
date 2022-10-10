import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeroContainer extends StatelessWidget {
  late String imgName;
  late String heading;

  final Widget pageToShow;

  HeroContainer(
      {required this.imgName, required this.heading, required this.pageToShow});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageToShow)),
        },
        child: Container(
          margin: EdgeInsets.only(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 12.4,
              right: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Image(
                    image: AssetImage(
                      imgName,
                    ),
                    fit: BoxFit.cover,
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    colorBlendMode: BlendMode.softLight,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(197, 245, 127, 23),
                        borderRadius: BorderRadius.circular(12)),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Center(
                      child: Text(heading,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "BubblegumSans",
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
