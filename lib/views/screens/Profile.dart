import 'package:flutter/material.dart';

import '../Widgets/background_Clipper.dart';
import 'HomepageScreen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgnew.jpg'), fit: BoxFit.fill)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.8,
                      left: MediaQuery.of(context).size.width / 18),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomepageScreen())),
                        },
                      )
                    ],
                  ),
                )),
                Positioned(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 20,
                              left: MediaQuery.of(context).size.width / 2.5),
                          height: MediaQuery.of(context).size.height / 5.5,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image(image: AssetImage("assets/svg.png")),
                        ),
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/pic.png"),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 40),
                          child: Column(children: [
                            Container(
                              child: Text(
                                "Muzammil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "BubblegumSans",
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "MuzammilRafiq@abcd.com",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: "BubblegumSans",
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 30),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 45),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    contentPadding:
                                        new EdgeInsets.symmetric(vertical: 0.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    fillColor: Colors.white,
                                    filled: true,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.yellow.shade900,
                                      ), // icon is 48px widget.
                                    ),
                                    hintText: 'Muzammil Rafique',
                                    hintStyle: TextStyle(
                                        fontFamily: "BubblegumSans",
                                        fontSize: 14.0,
                                        color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 45),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    contentPadding:
                                        new EdgeInsets.symmetric(vertical: 0.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    fillColor: Colors.white,
                                    filled: true,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: Icon(
                                        Icons.phone_android,
                                        color: Colors.yellow.shade900,
                                      ), // icon is 48px widget.
                                    ),
                                    hintText: '0309-4412127',
                                    hintStyle: TextStyle(
                                        fontFamily: "BubblegumSans",
                                        fontSize: 14.0,
                                        color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 45,
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    contentPadding:
                                        new EdgeInsets.symmetric(vertical: 0.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    fillColor: Colors.white,
                                    filled: true,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.yellow.shade900,
                                      ), // icon is 48px widget.
                                    ),
                                    hintText: '123@456',
                                    hintStyle: TextStyle(
                                        fontFamily: "BubblegumSans",
                                        fontSize: 14.0,
                                        color: Colors.black)),
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 10,
                  child: SingleChildScrollView(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomepageScreen()));
                      },
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(80.0)),
                      // padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF57F17),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 320.0,
                              minHeight:
                                  40.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Save Changes',
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
        ),
      ),
    );
  }
}
