import 'package:flutter/material.dart';
import 'package:flutter_angles_with_custom_paint/res/app_constants.dart';
import 'package:flutter_angles_with_custom_paint/screens/custom_paint/linear_custom_paint.dart';
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
        LinearCustomPaintScreen(),
        Center(
            child: Text("Ractangular", style: TextStyle(color: Colors.white))),
        Center(
            child: Text("Rounded Rectangle",
                style: TextStyle(color: Colors.white))),
        Center(child: Text("Circle", style: TextStyle(color: Colors.white))),
        Center(child: Text("Arc", style: TextStyle(color: Colors.white))),
        Center(child: Text("Triangle", style: TextStyle(color: Colors.white))),
        Center(child: Text("Image", style: TextStyle(color: Colors.white))),
      ],
    );
  }
}
