import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/arc_painter.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';

class ArcPainterScreen extends StatelessWidget {
  const ArcPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: ArcPainter(),
    ));
  }
}
