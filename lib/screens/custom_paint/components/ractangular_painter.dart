import 'package:flutter/material.dart';

class RactangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // the size is taken by parent widgets like in this case its take totalsize of container
    // the canvas is the design which draw multiple design
    final double x1 = size.width * 1 / 6;
    final double y1 = size.height * 1 / 4;

    final double x2 = size.width * 5 / 6;
    final double y2 = size.height * 3 / 4;

    final Offset p1 = Offset(x1, y1);
    final Offset p2 = Offset(x2, y2);

    Paint paintLine = Paint();
    paintLine.color = Colors.red;
    paintLine.strokeWidth = 10.0;
    paintLine.strokeCap = StrokeCap.round;

    canvas.drawLine(p1, p2, paintLine);

    Paint paintractangle = Paint();
    paintractangle.color = Colors.blue;
    paintractangle.strokeWidth = 10.0;
    paintractangle.strokeCap = StrokeCap.round;
    paintractangle.style = PaintingStyle.stroke;

    Rect rect = Rect.fromPoints(p1, p2);

    canvas.drawRect(rect, paintractangle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
