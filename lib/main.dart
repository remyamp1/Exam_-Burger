import 'package:exam_project/details.dart';
import 'package:exam_project/firstpage.dart';
import 'package:exam_project/login.dart';
import 'package:exam_project/reg.dart';
import 'package:exam_project/sign.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
    );
  }
}
     