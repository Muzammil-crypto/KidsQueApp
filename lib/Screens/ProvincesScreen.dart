import 'package:flutter/material.dart';

import 'ProvinceMapScreen.dart';

class ProvincesListScreen extends StatelessWidget {
  const ProvincesListScreen({Key? key}) : super(key: key);

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
                          builder: (context) => ProvinceMapScreen(
                                lat: 31.1704,
                                long: 72.7097,
                              )));
                },
                child: ListTile(
                  title: Text("Punjab"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProvinceMapScreen(
                                lat: 31.1704,
                                long: 72.7097,
                              )));
                },
                child: ListTile(
                  title: Text("Khyber Pakhtoonkhwa"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProvinceMapScreen(
                                lat: 31.1704,
                                long: 72.7097,
                              )));
                },
                child: ListTile(
                  title: Text("Sindh"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Hello");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProvinceMapScreen(
                                lat: 31.1704,
                                long: 72.7097,
                              )));
                },
                child: ListTile(
                  title: Text("Balochistan"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProvinceMapScreen(
                                lat: 31.1704,
                                long: 72.7097,
                              )));
                },
                child: ListTile(
                  title: Text("Gilgit Baltistan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
