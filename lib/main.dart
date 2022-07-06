import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'MyPhoto.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.yellow, body: MyPhoto()),
    );
  }
}
