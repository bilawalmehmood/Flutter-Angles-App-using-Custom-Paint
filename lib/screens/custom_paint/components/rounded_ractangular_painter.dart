import 'package:flutter/material.dart';

class RoundedRactangularPainter extends CustomPainter {
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

    Rect rect = Rect.fromPoints(p1, p2);
    const radius = Radius.circular(30);
    RRect rRect = RRect.fromRectAndRadius(rect, radius);

    Paint paintroundedractangle = Paint();
    paintroundedractangle.color = Colors.blue;
    paintroundedractangle.strokeWidth = 10.0;
    paintroundedractangle.strokeCap = StrokeCap.round;
    paintroundedractangle.style = PaintingStyle.stroke;

    canvas.drawRRect(rRect, paintroundedractangle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
