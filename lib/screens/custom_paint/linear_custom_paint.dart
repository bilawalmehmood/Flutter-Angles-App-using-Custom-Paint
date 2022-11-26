import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/linear_painter.dart';

class LinearCustomPaintScreen extends StatelessWidget {
  const LinearCustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: LinearPainter(),
    ));
  }
}
