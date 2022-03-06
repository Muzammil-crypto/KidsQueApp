import 'package:flutter/material.dart';
import 'package:sign_in_interface/topicDetails.dart';
import 'topicDetails.dart';

class topicPage extends StatelessWidget {
  int topicId;
  topicPage(this.topicId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: double.infinity,
            decoration: BoxDecoration(
                color: topicDetail[0].color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))
                // color: Colors.amber,
                ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 10),
                        child: IconButton(
                            icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        )))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 45, bottom: 30),
                      child: Image.asset(topicDetail[0].image),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(
                  topicDetail[0].topic,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
