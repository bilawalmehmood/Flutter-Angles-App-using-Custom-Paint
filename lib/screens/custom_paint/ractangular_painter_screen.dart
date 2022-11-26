import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/ractangular_painter.dart';

class RactangularPainterScreen extends StatelessWidget {
  const RactangularPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: RactangularPainter(),
    ));
  }
}
