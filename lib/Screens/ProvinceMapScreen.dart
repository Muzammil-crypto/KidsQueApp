import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProvinceMapScreen extends StatefulWidget {
  double lat;
  double long;

  ProvinceMapScreen({Key? key, required this.lat, required this.long})
      : super(key: key);

  @override
  State<ProvinceMapScreen> createState() => _ProvinceMapScreenState();
}

class _ProvinceMapScreenState extends State<ProvinceMapScreen>
    with WidgetsBindingObserver {
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
    WidgetsBinding.instance!.addObserver(this);
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
        body: Builder(builder: (context) {
          return Stack(
            children: [
              GoogleMap(
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
              (_mapLoading)
                  ? Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.grey[100],
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Container(),
            ],
          );
        }),
        appBar: AppBar(
          title: Text("Service Location"),
        ));
  }

  setMarker() async {
    _marker = Marker(
        markerId: MarkerId('_currentLocation'),
        infoWindow: InfoWindow(title: 'My location'),
        position: LatLng(widget.lat, widget.long));
    markers.add(_marker!);
  }

  // void setPolygon() {
  //   final String polygonIdVal = "polygon_id_$polygonIDCounter";
  //   polygons.add(Polygon(
  //     polygonId: PolygonId(polygonIdVal),
  //     points: polygonLatLngs,
  //     strokeWidth: 2,
  //     strokeColor: Colors.yellow,
  //     fillColor: Colors.yellow.withOpacity(0.15),
  //   ));
  // }
}
