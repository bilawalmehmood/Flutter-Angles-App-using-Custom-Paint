import 'package:flutter/material.dart';

class LinearPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double x1 = size.width * 1 / 6;
    final double x2 = size.width * 5 / 6;
    final double x3 = size.width * 5 / 6;
    final double y1 = size.height * 1 / 2;
    final double y2 = size.height * 1 / 2;
    final double y3 = size.height * .7;

    final Offset p1 = Offset(x1, y1);
    final Offset p2 = Offset(x2, y2);
    final Offset p3 = Offset(x3, y3);

    Paint paint = Paint();
    paint.color = Colors.red;
    paint.strokeWidth = 10.0;
    paint.strokeCap = StrokeCap.round;

    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p2, p3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
