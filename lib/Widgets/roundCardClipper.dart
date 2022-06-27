import 'package:flutter/material.dart';

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
