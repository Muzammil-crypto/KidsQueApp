import 'package:flutter/material.dart';

import '../Widgets/Clipper.dart';

class ContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
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
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/lahore-fort-shahi-fort-lahore-picture-id833093782?b=1&k=20&m=833093782&s=170667a&w=0&h=UuqEfc9B22K0Z8XN3fNRVliGPa9k4Fowm8Ensq_5CjA=")),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
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
                                      "Lahore Fort",
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans",
                                          fontSize: 45,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan, The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan",
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans",
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(212, 255, 142, 142),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        Positioned(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Text(
                                  "Related Video",
                                  style: TextStyle(
                                      fontFamily: "BubblegumSans",
                                      fontSize: 45,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 0.96,
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
