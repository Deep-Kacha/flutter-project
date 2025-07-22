import 'package:flutter/material.dart';
import 'cart_page.dart';

// import 'dashboard.dart';
// import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

// design product card which contains image of product name of
// it actual price and current and current price
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CartPage(),
    );
  }
}
