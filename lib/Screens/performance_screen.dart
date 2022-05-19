import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/Profile.dart';
import 'package:sign_in_interface/Widgets/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Widgets/Clipper.dart';

class PerformanceScreen extends StatefulWidget {
  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  late List<KidData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
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
                    image: AssetImage('assets/bgb.png'), fit: BoxFit.cover)),
            child: Stack(
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
                                Color.fromARGB(255, 185, 131, 15),
                                Colors.red
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                        height: MediaQuery.of(context).size.height / 2.5,
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
                              xValueMapper: (KidData data, _) => data.topic,
                              yValueMapper: (KidData data, _) => data.Marks,
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
                  top: MediaQuery.of(context).size.height / 2.3,
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
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '80',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                'History',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '100',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '70',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                'Climates',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '100',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '90',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Text(
                                'Hero',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '100',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                              DataCell(Text(
                                '20',
                                style: TextStyle(fontFamily: "BubblegumSans"),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 10,
                  child: SingleChildScrollView(
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF57F17),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 320.0,
                              minHeight:
                                  40.0), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Download Result',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "BubblegumSans",
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<KidData> getChartData() {
    final List<KidData> chartData = [
      KidData("Culture", 18),
      KidData("Geagraphy", 19),
      KidData("History", 17),
      KidData("Economics", 12),
      KidData("Climates of Pakistan", 18),
    ];
    return chartData;
  }
}

class BackgroundClipper_2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.8202987);
    path_0.cubicTo(
        size.width,
        size.height * 0.8202987,
        size.width * 0.9312402,
        size.height * 0.9168623,
        size.width * 0.8401667,
        size.height * 0.9168623);
    path_0.cubicTo(
        size.width * 0.7054681,
        size.height * 0.9168623,
        size.width * 0.6648015,
        size.height * 0.8579662,
        size.width * 0.5434902,
        size.height * 0.8718909);
    path_0.cubicTo(
        size.width * 0.4219069,
        size.height * 0.8858468,
        size.width * 0.3930000,
        size.height * 0.9687766,
        size.width * 0.2669167,
        size.height * 0.9946727);
    path_0.cubicTo(size.width * 0.1137703, size.height * 1.026127, 0,
        size.height * 0.8718909, 0, size.height * 0.8718909);
    path_0.lineTo(0, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
