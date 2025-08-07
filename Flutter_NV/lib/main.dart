import 'package:flutter/material.dart';
import 'package:flutter_nv/loginpage.dart';
// import 'package:flutter_nv/calculator.dart';
// import 'package:flutter_nv/containerExperiment.dart';
import 'package:flutter_nv/stopwatch.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
