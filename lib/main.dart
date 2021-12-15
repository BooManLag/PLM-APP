import 'package:flutter/material.dart';
import 'package:plm_app_final/onboard/introductory_page.dart';
// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PLM HARIBON APP",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Intro(),
    );
  }
}
