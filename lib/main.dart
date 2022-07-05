import 'package:flutter/material.dart';

import 'MyPhoto.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        color: Colors.yellow,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.yellow,
          body: MyBody()
          ),
      );
    
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPhoto();
  }
}