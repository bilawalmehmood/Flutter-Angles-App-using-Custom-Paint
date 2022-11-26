import 'package:flutter/material.dart';

class TringlePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // the size is taken by parent widgets like in this case its take totalsize of container
    // the canvas is the design which draw multiple design
    final double x1 = size.width * 1 / 2;
    final double y1 = size.height * 1 / 4;
    final double x2 = size.width * 1 / 6;
    final double y2 = size.height * 3 / 4;
    final double x3 = size.width * 5 / 6;
    final double y3 = size.height * 3 / 4;

    final Path path = Path();
    path.moveTo(x1, y1);
    path.lineTo(x2, y2);
    path.lineTo(x3, y3);
    path.close();

    Paint painTringle = Paint();
    painTringle.color = Colors.green;
    painTringle.strokeWidth = 10.0;
    painTringle.strokeCap = StrokeCap.round;
    painTringle.style = PaintingStyle.stroke;

    canvas.drawPath(path, painTringle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
