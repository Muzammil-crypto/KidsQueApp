import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sign_in_interface/Screens/CitydetialScreen.dart';
import 'package:sign_in_interface/Screens/ProvinceDetailScreen.dart';

import 'ProvincesListScreen.dart';

class MapScreen extends StatefulWidget {
  String label;
  double lat;
  double long;
  int id;
  MapScreen(
      {Key? key,
      required this.lat,
      required this.long,
      required this.id,
      required this.label})
      : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Set<Polygon> polygons = HashSet<Polygon>();
  Set<Marker> markers = <Marker>{};
  Marker? _marker;
  bool _mapLoading = true;
  // int polygonIDCounter = 1;
  // List<LatLng> polygonLatLngs = [];
  double? radius;

  CameraPosition? cameraPos;

  //                            MARKER                               //
  // Marker? myLocationMarker;

  @override
  void initState() {
    cameraPos = CameraPosition(
        target: LatLng(double.parse(widget.lat.toString()),
            double.parse(widget.long.toString())),
        zoom: 7);

    setMarker();

    // setPolygon();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Builder(builder: (context) {
        return Stack(
          children: [
            Container(
              color: Colors.yellow.shade900,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProvincesListScreen())),
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text("Tap on Place to see the Details",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "BubblegumSans",
                            color: Colors.white)),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 35.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      child: GoogleMap(
                        mapType: MapType.hybrid,
                        markers: markers,
                        initialCameraPosition: cameraPos!,
                        onMapCreated: (GoogleMapController controller) {
                          setState(() {
                            _mapLoading = false;
                          });
                          // _controller.complete(controller);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            (_mapLoading)
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.grey[100],
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
          ],
        );
      }),
    );
  }

  setMarker() async {
    _marker = Marker(
        markerId: MarkerId('_currentLocation'),
        infoWindow: InfoWindow(title: 'My location'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget.label == "Province"
                  ? ProvinceDetailScreen(
                      id: widget.id,
                    )
                  : CityDetails(
                      id: widget.id.toString(),
                    ),
            ),
          );
        },
        position: LatLng(widget.lat, widget.long));
    markers.add(_marker!);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
