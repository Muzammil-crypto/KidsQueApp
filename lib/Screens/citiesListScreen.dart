import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/ProvincesListScreen.dart';
import 'package:sign_in_interface/Screens/chooice_screen.dart';

import 'MapScreen.dart';

class CitiesListScreen extends StatelessWidget {
  const CitiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Provinces"),
    //     ),
    //     body: Container(
    //       child: Column(
    //         children: [
    //           GestureDetector(
    //             onTap: () {
    //               print("Hello");
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 1,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Lahore"),
    //             ),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               print("Hello");
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 2,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Islamabad"),
    //             ),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               print("Hello");
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 3,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Multan"),
    //             ),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               print("Hello");
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 4,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Peshawar"),
    //             ),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 5,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Quetta"),
    //             ),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => MapScreen(
    //                             label: "city",
    //                             lat: 31.1704,
    //                             long: 72.7097,
    //                             id: 6,
    //                           )));
    //             },
    //             child: ListTile(
    //               title: Text("Rawalpindi"),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(children: [
            Positioned(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProvinceDetails(
                        "assets/c1.png",
                        "Karachi",
                        Colors.pinkAccent,
                        Colors.deepOrangeAccent,
                        "Karachi is the largest city in Pakistan and the twelfth-largest city in the world. It is the capital of the Pakistani province of Sindh. Ranked as a beta-global city, it is Pakistan's premier industrial and financial centre.",
                        MapScreen(
                          label: "city",
                          lat: 31.1704,
                          long: 72.7097,
                          id: 5,
                        )),
                    ProvinceDetails(
                        "assets/c3.gif",
                        // "assets/c7.png",
                        "Lahore",
                        Colors.red,
                        Colors.deepOrange,
                        "Lahore is the capital of the Pakistani province of Punjab, is Pakistan's 2nd largest city, and is the 26th largest city in the world. Lahore is one of Pakistan's wealthiest cities.",
                        MapScreen(
                          label: "city",
                          lat: 31.1704,
                          long: 72.7097,
                          id: 5,
                        )),
                    ProvinceDetails(
                        "assets/c4.png",
                        "Islamabad",
                        Colors.deepPurple,
                        Colors.cyan,
                        "Islamabad is the capital city of Pakistan, and is administered by the Pakistani federal government as part of the Islamabad Capital Territory. It is the ninth-largest city in Pakistan, while the larger Islamabad–Rawalpindi metropolitan area is the country's third-largest with a population of about 4.1 million people.",
                        MapScreen(
                          label: "city",
                          lat: 31.1704,
                          long: 72.7097,
                          id: 5,
                        )),
                    ProvinceDetails(
                        "assets/c6.png",
                        "Multan",
                        // Colors.teal,
                        // Colors.cyan,
                        Color.fromARGB(255, 0, 78, 3),
                        Colors.teal,
                        "Multan is a city and capital of Multan Division located in Punjab, Pakistan. Situated on the bank of the Chenab River, Multan is Pakistan's 7th largest city and is the major cultural and economic centre of Southern Punjab. Multan's history stretches deep into antiquity.",
                        MapScreen(
                          label: "city",
                          lat: 31.1704,
                          long: 72.7097,
                          id: 5,
                        )),
                    ProvinceDetails(
                        "assets/c5.png",
                        "Peshawar",
                        Colors.teal,
                        Colors.cyan,
                        // Colors.green,
                        // Colors.tealAccent,
                        "Peshawar is the capital of the Pakistani province of Khyber Pakhtunkhwa and its largest city. It is the sixth-largest city in Pakistan, and the largest Pashtun-majority city in the country.",
                        MapScreen(
                          label: "city",
                          lat: 31.1704,
                          long: 72.7097,
                          id: 5,
                        )),
                  ]),
            ),
            Positioned(
                top: 40,
                left: 35,
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrawerAnimated())),
                  },
                )),
          ]),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}