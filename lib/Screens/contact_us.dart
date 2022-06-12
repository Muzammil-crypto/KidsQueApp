import 'package:flutter/material.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

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
                    top: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(0, 3, 168, 244),
                      child: Image(
                        image: AssetImage("assets/ani30.gif"),
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                  bottom: 150,
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
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                            Text(
                              "The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan, The mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir KhanThe mosque was commissioned by the chief physician to the Mughal Court, Hakeem Ilam-ud-din Ansari, who was widely known as Wazir Khan",
                              style: TextStyle(
                                  fontFamily: "BubblegumSans",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(197, 255, 142, 142),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
                Positioned(
                  bottom: 70,
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
                            'Get in touch with Us',
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
