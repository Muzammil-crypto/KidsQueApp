import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/views/Screens/quiz/home_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../core/stores/quiz_store.dart';
import '../../models/quiz_history.dart';
import '../Widgets/background_Clipper.dart';
import '../Widgets/chart.dart';
import '../Widgets/roundCardClipper.dart';

class PerformanceScreen extends StatefulWidget {
  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  late List<KidData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  bool isLoading = true;

  @override
  void initState() {
    getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgnew.jpg'), fit: BoxFit.cover)),
            child: isLoading
                ? CircularProgressIndicator()
                : Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                          bottom: MediaQuery.of(context).size.height / 1.6,
                          child: ClipPath(
                            clipper: BackgroundClipper_2(),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.yellow.shade900,
                                      Colors.orange.shade900
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                              ),
                              height: MediaQuery.of(context).size.height / 2.65,
                              width: MediaQuery.of(context).size.width,
                              child: SfCircularChart(
                                tooltipBehavior: _tooltipBehavior,
                                legend: Legend(
                                    isVisible: true,
                                    overflowMode: LegendItemOverflowMode.wrap),
                                series: <CircularSeries>[
                                  DoughnutSeries<KidData, String>(
                                    radius: "90%",
                                    dataSource: _chartData,
                                    xValueMapper: (KidData data, _) =>
                                        data.topic,
                                    yValueMapper: (KidData data, _) =>
                                        data.Marks,
                                    dataLabelSettings: DataLabelSettings(
                                      isVisible: true,
                                    ),
                                    enableTooltip: true,
                                    //   maximumValue: 20,
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 2.2,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(144, 255, 122, 166),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(children: <Widget>[
                            Container(
                              width: 320,
                              child: DataTable(
                                columns: [
                                  DataColumn(
                                      label: Text('Subject',
                                          style: TextStyle(
                                              fontFamily: "BubblegumSans",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Total',
                                          style: TextStyle(
                                              fontFamily: "BubblegumSans",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Obtained',
                                          style: TextStyle(
                                              fontFamily: "BubblegumSans",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold))),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Culture',
                                      style: TextStyle(
                                        fontFamily: "BubblegumSans",
                                      ),
                                    )),
                                    DataCell(Text(
                                      '100',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      customRound(
                                          (_chartData[0].Marks / 6) * 100),
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'History',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      '100',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      customRound(
                                          (_chartData[1].Marks / 6) * 100),
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Climates',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      '100',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      customRound(
                                          (_chartData[2].Marks / 6) * 100),
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Hero',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      '100',
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                    DataCell(Text(
                                      customRound(
                                          (_chartData[3].Marks / 6) * 100),
                                      style: TextStyle(
                                          fontFamily: "BubblegumSans"),
                                    )),
                                  ]),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 5,
                            child: Image(
                              fit: BoxFit.contain,
                              image: AssetImage("assets/cityy.png"),
                            )),
                      ),
                      Positioned(
                          top: 50,
                          left: 15,
                          child: GestureDetector(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(101, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen())),
                            },
                          )),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  String customRound(
    double val,
  ) {
    num mod = pow(10.0, 2);
    return ((val * mod).round().toDouble() / mod).toStringAsFixed(2);
  }

  getChartData() async {
    var store = QuizStore();
    List<QuizHistory> quizHistoryList = [];
    List<int> marks = [0, 0, 0, 0, 0, 0, 0];
    await store.loadQuizHistoryAsync().then((value) {
      quizHistoryList = value;
    });

    quizHistoryList.forEach((element) {
      print("DDDD  ${element.correct}");
    });
    for (int i = quizHistoryList.length - 1; i >= 0; i--) {
      marks[quizHistoryList[i].categoryId - 1] =
          // ignore: unnecessary_null_comparison
          quizHistoryList[i].correct.toInt() != null
              ? quizHistoryList[i].correct.toInt()
              : 0;
      // int.parse(quizHistoryList[i].correct.toString());
    }

    // final List<KidData>

    _chartData = [
      KidData("Culture,", marks[0]),
      KidData("Geagraphy", marks[5]),
      KidData("History", marks[2]),
      // KidData("Economics", 12),
      KidData("Climates of Pakistan", marks[3]),
    ];
    setState(() {
      isLoading = false;
    });

    // return chartData;
  }
}
