import 'package:flutter/material.dart';
import 'package:flutter_tmp/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUI
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Food App',
      home: homepage(),
    );
  }
}