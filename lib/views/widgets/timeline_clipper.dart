import 'package:flutter/material.dart';

class TimelineBoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path0.lineTo(67 * _xScaling, 20.7 * _yScaling);
    path0.cubicTo(
      73.7 * _xScaling,
      24.5 * _yScaling,
      82.1 * _xScaling,
      25.6 * _yScaling,
      86.6 * _xScaling,
      30 * _yScaling,
    );
    path0.cubicTo(
      91 * _xScaling,
      34.4 * _yScaling,
      91.5 * _xScaling,
      42.2 * _yScaling,
      89.6 * _xScaling,
      48.9 * _yScaling,
    );
    path0.cubicTo(
      87.8 * _xScaling,
      55.6 * _yScaling,
      83.5 * _xScaling,
      61.3 * _yScaling,
      80.3 * _xScaling,
      67.7 * _yScaling,
    );
    path0.cubicTo(
      77 * _xScaling,
      74.2 * _yScaling,
      74.7 * _xScaling,
      81.5 * _yScaling,
      69.8 * _xScaling,
      86.8 * _yScaling,
    );
    path0.cubicTo(
      64.9 * _xScaling,
      92.1 * _yScaling,
      57.5 * _xScaling,
      95.4 * _yScaling,
      50.4 * _xScaling,
      94.7 * _yScaling,
    );
    path0.cubicTo(
      43.4 * _xScaling,
      94 * _yScaling,
      36.8 * _xScaling,
      89.2 * _yScaling,
      31.9 * _xScaling,
      83.9 * _yScaling,
    );
    path0.cubicTo(
      27 * _xScaling,
      78.6 * _yScaling,
      23.8 * _xScaling,
      72.8 * _yScaling,
      19.1 * _xScaling,
      67 * _yScaling,
    );
    path0.cubicTo(
      14.299999999999997 * _xScaling,
      61.3 * _yScaling,
      8 * _xScaling,
      55.6 * _yScaling,
      6.399999999999999 * _xScaling,
      49.1 * _yScaling,
    );
    path0.cubicTo(
      4.799999999999997 * _xScaling,
      42.5 * _yScaling,
      7.799999999999997 * _xScaling,
      35 * _yScaling,
      12.100000000000001 * _xScaling,
      28.3 * _yScaling,
    );
    path0.cubicTo(
      16.299999999999997 * _xScaling,
      21.7 * _yScaling,
      21.7 * _xScaling,
      16 * _yScaling,
      28.2 * _xScaling,
      12.100000000000001 * _yScaling,
    );
    path0.cubicTo(
      34.7 * _xScaling,
      8.200000000000003 * _yScaling,
      42.4 * _xScaling,
      6 * _yScaling,
      48.7 * _xScaling,
      8.200000000000003 * _yScaling,
    );
    path0.cubicTo(
      55.1 * _xScaling,
      10.399999999999999 * _yScaling,
      60.2 * _xScaling,
      16.9 * _yScaling,
      67 * _xScaling,
      20.7 * _yScaling,
    );
    path0.cubicTo(
      67 * _xScaling,
      20.7 * _yScaling,
      67 * _xScaling,
      20.7 * _yScaling,
      67 * _xScaling,
      20.7 * _yScaling,
    );
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
