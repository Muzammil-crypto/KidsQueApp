import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  final String backBtnImagePath;
  final String headerText;

  const ScreenHeader(this.headerText,
      {Key? key, this.backBtnImagePath = "assets/icons/back.png"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0, top: 10),
            child: Text(
              headerText,
              style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontSize: 30,
                  fontFamily: "ShinyBalloonDemo"),
            ),
          ),
        ],
      ),
    );
  }
}
