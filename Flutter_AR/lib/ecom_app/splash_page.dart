import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_design/ecom_app/cart_page.dart';
import 'package:login_design/ecom_app/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      bool isLoggedin = sharedPreferences.getBool("isloggedin") ?? false;
      if (isLoggedin) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to the Splash Page",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Icon(Icons.flutter_dash),
          ],
        ),
      ),
    );
  }
}

class SharedPreferences {
  static Future<SharedPreferences> getInstance() async {
    throw UnimplementedError();
  }

  getBool(String s) {}
}
