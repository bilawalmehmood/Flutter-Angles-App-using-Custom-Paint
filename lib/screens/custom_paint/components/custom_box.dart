import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBox extends StatelessWidget {
  final Widget child;
  const CustomBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          height: Get.height * .4,
          width: Get.width * .7,
          child: child,
        ),
      ),
    );
    ;
  }
}
