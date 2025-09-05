import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  final String label;
  final double lat;
  final double long;
  final int id;
  final String infoWindowTitle;
  final String infoWindowDes;
  final String infoWindowImage;

  const MapScreen({
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
  bool showInfoWindow = false;
  Offset infoWindowOffset = Offset.zero;

  void _onMarkerTap() {
    setState(() {
      showInfoWindow = true;
    });
  }

  void _onMapTap(TapPosition, LatLng) {
    setState(() {
      showInfoWindow = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: Column(
        children: [
          Container(
            color: Colors.yellow.shade900,
            width: double.infinity,
            padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        widget.infoWindowTitle,
                        style: TextStyle(
                          fontFamily: "ShinyBalloonDemo",
                          fontSize: 32,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      widget.infoWindowImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  widget.infoWindowDes,
                  style: TextStyle(
                    fontFamily: "BubblegumSans",
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(widget.lat, widget.long),
                      zoom: 6.0,
                      onTap: _onMapTap,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(widget.lat, widget.long),
                            width: 50,
                            height: 50,
                            child: GestureDetector(
                              onTap: _onMarkerTap,
                              child: Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (showInfoWindow)
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 100,
                    top: 40,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.infoWindowTitle,
                              style: TextStyle(
                                fontFamily: "ShinyBalloonDemo",
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.infoWindowImage,
                                height: 40,
                                width: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              widget.infoWindowDes,
                              style: TextStyle(
                                fontFamily: "BubblegumSans",
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
