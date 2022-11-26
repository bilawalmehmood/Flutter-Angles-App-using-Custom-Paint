import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/tringle_painter.dart';

class TringlePainterScreen extends StatelessWidget {
  const TringlePainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: TringlePainter(),
    ));
  }
}
