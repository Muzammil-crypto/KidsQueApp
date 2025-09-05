import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0068750, 0);
    path0.quadraticBezierTo(size.width * 0.0003125, size.height * 0.5850000,
        size.width * 0.1031250, size.height * 0.5825000);
    path0.quadraticBezierTo(size.width * 0.0018750, size.height * 0.5855000,
        size.width * 0.0068750, size.height);
    path0.lineTo(size.width * 0.9928125, size.height);
    path0.quadraticBezierTo(size.width * 0.9984375, size.height * 0.5850000,
        size.width * 0.9018750, size.height * 0.5860000);
    path0.quadraticBezierTo(size.width * 0.9984375, size.height * 0.5840000,
        size.width * 0.9925000, 0);
    path0.lineTo(size.width * 0.0068750, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
