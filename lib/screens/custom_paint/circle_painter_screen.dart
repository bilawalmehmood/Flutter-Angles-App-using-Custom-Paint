import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/circle_painter.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';

class CirclePainterScreen extends StatelessWidget {
  const CirclePainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: CirclePainter(),
    ));
  }
}
