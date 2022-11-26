import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // the size is taken by parent widgets like in this case its take totalsize of container
    // the canvas is the design which draw multiple design
    final double x = size.width * 1 / 2;
    final double y = size.height * 1 / 2;

    final Offset circle = Offset(x, y);
    final double radius = size.width * 1 / 3;

    Paint painCircle = Paint();
    painCircle.color = Colors.red;
    painCircle.strokeWidth = 10.0;
    painCircle.strokeCap = StrokeCap.round;
    painCircle.style = PaintingStyle.stroke;

    canvas.drawCircle(circle, radius, painCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
