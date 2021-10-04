import 'package:buttons_radio_demo/button_demo.dart';
import 'package:buttons_radio_demo/correction.dart';
import 'package:buttons_radio_demo/groupedbutton_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: CorrectionClass(
        title: "Correction",
      ),
    );
  }
}
