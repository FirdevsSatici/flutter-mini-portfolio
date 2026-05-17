import 'package:exapp/screen/homeScreen.dart';
import 'package:exapp/screens/mainscreen.dart';
import 'package:exapp/veriList.dart';
import 'package:exapp/zar.dart';
import 'package:flutter/material.dart';
import 'package:exapp/zikirmatik.dart';

import 'screen/thirdScreen.dart';


void main() {
  runApp(const MyExApp());
}

class MyExApp extends StatelessWidget {
  const MyExApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Iosevka"),
      home: const Mainscreen(),

    );

  }
}

