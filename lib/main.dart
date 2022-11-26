import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_angles_with_custom_paint/res/app_constants.dart';
import 'package:flutter_angles_with_custom_paint/screens/home/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.black),
      home: const HomeScreen(),
    );
  }
}
