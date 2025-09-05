import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 40.0,
            right: 20.0,
            child: AppBar(
              backgroundColor: Color.fromARGB(115, 22, 78, 180),
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => {},
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
