import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';

import 'ProvinceMapScreen.dart';

class ProvincesListScreen extends StatefulWidget {
  const ProvincesListScreen({Key? key}) : super(key: key);

  @override
  State<ProvincesListScreen> createState() => _ProvincesListScreenState();
}

class _ProvincesListScreenState extends State<ProvincesListScreen> {
  List<ProvinceModel> provinceList = [];

  @override
  void initState() {
    super.initState();
  }

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
                                id: 1,
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
                                id: 3,
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
                                id: 2,
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
                                id: 4,
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
                                id: 5,
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
