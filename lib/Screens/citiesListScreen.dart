import 'package:flutter/material.dart';

import 'MapScreen.dart';

class CitiesListScreen extends StatelessWidget {
  const CitiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provinces"),
        ),
        body: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 1,
                              )));
                },
                child: ListTile(
                  title: Text("Lahore"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 2,
                              )));
                },
                child: ListTile(
                  title: Text("Islamabad"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 3,
                              )));
                },
                child: ListTile(
                  title: Text("Multan"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 4,
                              )));
                },
                child: ListTile(
                  title: Text("Peshawar"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 5,
                              )));
                },
                child: ListTile(
                  title: Text("Quetta"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MapScreen(
                                label: "city",
                                lat: 31.1704,
                                long: 72.7097,
                                id: 6,
                              )));
                },
                child: ListTile(
                  title: Text("Rawalpindi"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
