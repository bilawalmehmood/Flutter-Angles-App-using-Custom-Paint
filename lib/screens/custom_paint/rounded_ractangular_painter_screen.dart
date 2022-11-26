import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/custom_box.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/rounded_ractangular_painter.dart';

class RoundedRactangularPainterScreen extends StatelessWidget {
  const RoundedRactangularPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBox(
        child: CustomPaint(
      foregroundPainter: RoundedRactangularPainter(),
    ));
  }
}
