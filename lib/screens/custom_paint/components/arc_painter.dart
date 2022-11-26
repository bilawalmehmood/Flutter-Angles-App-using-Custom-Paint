import 'dart:ui';

import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // the size is taken by parent widgets like in this case its take totalsize of container
    // the canvas is the design which draw multiple design
    final double x1 = size.width * .2;
    final double y1 = size.height * .4;
    final double x2 = size.width * .8;
    final double y2 = size.height * .4;
    final double x3 = size.width * .4;
    final double y3 = size.height * .4;
    final double x4 = size.width * .6;
    final double y4 = size.height * .4;

    final Offset p1 = Offset(x1, y1);
    final Offset p2 = Offset(x2, y2);
    final Offset p3 = Offset(x3, y3);
    final Offset p4 = Offset(x4, y4);
    const Radius radius = Radius.circular(80);

    final Path path = Path();
    path.moveTo(x1, y1);
    path.arcToPoint(p2, radius: radius, clockwise: false);

    Paint paintArc = Paint();
    paintArc.color = Colors.red;
    paintArc.strokeWidth = 10.0;
    paintArc.strokeCap = StrokeCap.round;
    paintArc.style = PaintingStyle.stroke;

    canvas.drawPath(path, paintArc);

    canvas.drawPoints(PointMode.points, [p3, p4], paintArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
