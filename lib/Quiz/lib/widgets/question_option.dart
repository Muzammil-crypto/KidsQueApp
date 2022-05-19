import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  bool isSelected;
  String text;
  String optionText;
  int index;

  QuestionOption(this.index, this.optionText, this.text,
      {Key? key, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.deepPurpleAccent, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : Colors.white),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    optionText,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontFamily: "BubblegumSans",
                        fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: "BubblegumSans"),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}