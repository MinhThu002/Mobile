import 'package:coffee/pages/cartpage.dart';
import 'package:coffee/pages/homepage.dart';
import 'package:coffee/pages/itempage.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => itemPage(),
      },
    );
  }
}
