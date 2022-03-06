import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15),
            child: Icon(
              (Icons.arrow_back_ios),
              size: 20,
            ),
          ),
          Positioned(
            top: 5,
            left: 40.0,
            right: 20.0,
            child: AppBar(
              backgroundColor: Color.fromARGB(115, 22, 78, 180),
              leading: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              primary: false,
              title: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white))),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 10),

              //   padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Text(
                  "",
                  style: TextStyle(
                      fontSize: 1.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              color: Colors.transparent,
              height: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
