import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/Clipper.dart';

class ContactUs extends StatelessWidget {
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
                    image: AssetImage('assets/bgb.png'), fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    top: MediaQuery.of(context).size.height / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/svg.png'))),
                      ),
                    )),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 50,
                                  color: Colors.white),
                            ),
                            Text(
                              "The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan, The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan",
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(171, 255, 142, 142),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: SingleChildScrollView(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {},
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF57F17),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 320.0,
                              minHeight:
                                  50.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Contact Us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "BubblegumSans",
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 30),
                          ),
                        ),
                      ),
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
