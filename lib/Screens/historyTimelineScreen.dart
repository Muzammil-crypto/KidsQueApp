import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/historyDetailScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/timelineCard.dart';
import 'package:timeline_list/timeline_list.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Stack(
          children: [
            Positioned(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 220, right: 5, left: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Timeline(
                    children: [
                      Marker(
                        child: getTimeline(
                          "https://www.pakpedia.pk/files/Image/Muhammad-Bin-Qasim.jpg",
                          "Muhmmad Bin Qasim",
                          "18, 715 AD",
                          HistoryDetailScreen(id: 1),
                          Colors.teal,
                        ),
                        icon: Icon(Icons.history_edu_outlined,
                            color: Colors.white),
                        position: MarkerPosition.left,
                      ),
                      Marker(
                        child: getTimeline(
                          "https://www.heritagetimes.in/wp-content/uploads/2019/10/SAKhan.jpg",
                          "Sir Syed Ahmad Khan",
                          "1817-1898",
                          HistoryDetailScreen(id: 3),
                          Colors.cyan,
                        ),
                        icon: Icon(Icons.history_edu_outlined,
                            color: Colors.white),
                        position: MarkerPosition.right,
                      ),
                      // Add more Marker widgets for each timeline entry as needed
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 10,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Color.fromARGB(99, 83, 83, 83),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
