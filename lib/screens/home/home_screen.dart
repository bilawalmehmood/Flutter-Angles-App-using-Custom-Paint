import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/res/app_constants.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/arc_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/circle_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/components/circle_painter.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/linear_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/ractangular_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/rounded_ractangular_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/tringle_painter_screen.dart';
import 'package:flutter_angles_with_custom_paint/screens/home/components/cutom_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTabBar(
      title: Constants.appName,
      tabs: [
        Tab(icon: Icon(Icons.stacked_line_chart), text: 'Line'),
        Tab(icon: Icon(Icons.crop_landscape), text: 'Rectangle'),
        Tab(icon: Icon(Icons.crop_square), text: 'Rounded Rectangle'),
        Tab(icon: Icon(Icons.circle), text: 'Circle'),
        Tab(icon: Icon(Icons.architecture), text: 'Arc'),
        Tab(icon: Icon(Icons.warning), text: 'Triangle'),
        Tab(icon: Icon(Icons.image), text: 'Image'),
      ],
      children: [
        LinearPainterScreen(),
        RactangularPainterScreen(),
        RoundedRactangularPainterScreen(),
        CirclePainterScreen(),
        ArcPainterScreen(),
        TringlePainterScreen(),
        Center(child: Text("Image", style: TextStyle(color: Colors.white))),
      ],
    );
  }
}
