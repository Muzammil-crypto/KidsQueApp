import 'dart:async';
import 'dart:ui' as ui;

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:sign_in_interface/Screens/CitydetialScreen.dart';
import 'package:sign_in_interface/Screens/ProvinceDetailScreen.dart';
import 'package:sign_in_interface/Screens/riversDetailScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';

// ignore: must_be_immutable
class MapScreen extends StatefulWidget {
  late String label;
  late double lat;
  late double long;
  late int id;
  late String infoWindowTitle;
  late String infoWindowDes;
  late String infoWindowImage;
  MapScreen({
    Key? key,
    required this.label,
    required this.lat,
    required this.long,
    required this.id,
    required this.infoWindowTitle,
    required this.infoWindowDes,
    required this.infoWindowImage,
  }) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  Map<String, String> imageAssets = {
    "Punjab": "assets/ip.png",
    "Sindh": "assets/sindh.png",
    "khyber pakhtunkhwa": "assets/p4.png",
    "Balochistan": "assets/baloch.png",
    "Gilgit Baltistan": "assets/p5.png",
    "Rawalpindi": "assets/c1.png",
    // "assets/c7.png",
    "Lahore": "assets/c7.png",
    "Islamabad": "assets/c4.png",

    "Multan": "assets/c6.png",
    "Peshawar": "assets/c5.png",

    "Ravi River": "assets/ravi.jpg",
    "Indus River": "assets/indus.jpg",
    "Jhelum River": "assets/jhel.jpg",
    "Chenab River": "assets/chen.jpg",
    "Sutlej River": "assets/sat.jpg",
  };

  // Set<Polygon> polygons = HashSet<Polygon>();
  final Completer<GoogleMapController> _controller = Completer();
  Uint8List? markerImages;
  final List<String> images = [
    "assets/punj1.png",
    "assets/sindh.png",
    "assets/p4.png",
    "assets/baloch.png",
    "assets/p5.png",
    "assets/c1.png",
    "assets/c7.png",
    "assets/c4.png",
    "assets/c6.png",
    "assets/c5.png",
    "assets/Ravi.png",
    "assets/indus.png",
    "assets/jhelum.png",
    "assets/chenab.png",
    "assets/satluj.png",
  ];
  final List<Marker> marker = <Marker>[
    Marker(
      markerId: MarkerId('8'),
      //position: LatLng(35.335379848825273, 72.7280952624079),
    )
  ];
  final List<LatLng> _latLang = <LatLng>[
    LatLng(31.335379848825273, 72.7280952624079),
    LatLng(
      26.36127443787428,
      68.48155098358325,
    ),
    LatLng(
      35.328121934776334,
      72.32469792112319,
    ),
    LatLng(
      29.00934280813528,
      65.09094661299501,
    ),
    LatLng(
      36.14435020478446,
      75.05962161085037,
    ),
    LatLng(
      25.31664378584215,
      67.02999062754044,
    ),
    LatLng(
      31.859583967375077,
      74.23925683546577,
    ),
    LatLng(
      34.11137541059898,
      73.0708585190089,
    ),
    LatLng(
      30.60548538432997,
      71.52956712283178,
    ),

    LatLng(
      34.46055187756329,
      71.47984804553573,
    ),
    //RiversLocation

    LatLng(31.561828622481798, 74.2541445347617),
    LatLng(30.122230214962187, 70.85348085722664),
    LatLng(32.96068996986589, 73.65663893923265),
    LatLng(31.857865657899577, 73.12388585506004),
    LatLng(31.017936623664752, 74.59434726907297),
  ];
  Set<Marker> markers = <Marker>{};
  //Marker? _marker;
  bool _mapLoading = true;
  // int polygonIDCounter = 1;
  // List<LatLng> polygonLatLngs = [];
  double? radius;

  CameraPosition? cameraPos;

  //                            MARKER                               //
  // Marker? myLocationMarker;
  Future<Uint8List> getBytesFromAssets(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    return (await frameInfo.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  @override
  void initState() {
    cameraPos = CameraPosition(
        target: LatLng(double.parse(widget.lat.toString()),
            double.parse(widget.long.toString())),
        zoom: 10);

    //  setMarker();

    // setPolygon();

    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    for (int i = 0; i < images.length; i++) {
      final Uint8List markerIcon = await getBytesFromAssets(images[i], 150);
      marker.add(
        Marker(
          onTap: () {
            _customInfoWindowController.addInfoWindow!(
              InkWell(
                child: InfowindoCard(context),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => widget.label == "Province"
                            ? ProvinceDetailScreen(
                                id: widget.id,
                              )
                            : widget.label == "city"
                                ? CityDetails(
                                    id: widget.id.toString(),
                                  )
                                : RiverDetailScreen(
                                    id: widget.id,
                                  )),
                  ),
                },
              ),
              _latLang[i],
            );
          },
          icon: BitmapDescriptor.fromBytes(markerIcon),
          markerId: MarkerId(i.toString()),
          position: _latLang[i],
          // infoWindow: InfoWindow(
          //   title: "This is title marker:" + i.toString(),
          // ),
        ),
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: Builder(builder: (context) {
        return Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.yellow.shade900,
                height: MediaQuery.of(context).size.height / 3.5,
                child: Row(
                  children: [
                    Positioned(
                      top: 0,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade900,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 90),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Text(
                                      "All About",
                                      style: TextStyle(
                                          letterSpacing: 6,
                                          fontSize: 40,
                                          fontFamily: "ShinyBalloonDemo",
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Pakistan",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: "ShinyBalloonDemo",
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 35.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.35,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      child: GoogleMap(
                        onTap: (position) {
                          _customInfoWindowController.hideInfoWindow!();
                        },
                        onCameraMove: (position) {
                          _customInfoWindowController.onCameraMove!();
                        },
                        mapType: MapType.normal,
                        markers: Set<Marker>.of(marker),
                        initialCameraPosition: cameraPos!,
                        onMapCreated: (GoogleMapController controller) {
                          _customInfoWindowController.googleMapController =
                              controller;

                          setState(() {
                            _mapLoading = false;
                          });

                          _controller.complete(controller);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CustomInfoWindow(
              controller: _customInfoWindowController,
              height: MediaQuery.of(context).size.height / 2.14,
              width: MediaQuery.of(context).size.width / 1.7,
              offset: 50,
            ),
            (_mapLoading)
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3.2,
                        width: MediaQuery.of(context).size.width / 0.5,
                        child: Image(
                          image: AssetImage("assets/ani34.gif"),
                        ),
                      ),
                    ),
                  )
                : Container(),
            Positioned(
              top: 50,
              left: 10,
              child: Row(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(101, 255, 255, 255),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () => {
                            Navigator.pop(context),
                          },
                        ),
                      )),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget InfowindoCard(BuildContext context) {
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 1.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    image: AssetImage(imageAssets[widget.infoWindowTitle]!),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(colors: [Colors.pink, Colors.red]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              height: 170,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "${widget.infoWindowTitle}",
                          style: TextStyle(
                              fontFamily: "ShinyBalloonDemo", fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Text(
                            "${widget.infoWindowDes}",
                            style: TextStyle(
                              fontFamily: "BubblegumSans",
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                    borderRadius: BorderRadius.circular(9)),
                child: Center(
                  child: Text(
                    "Touch to continue",
                    style: TextStyle(
                        fontFamily: "BubblegumSans", color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
