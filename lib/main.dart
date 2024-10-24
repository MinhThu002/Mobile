import 'package:coffee/pages/cartpage.dart';
import 'package:coffee/pages/homepage.dart';
import 'package:coffee/pages/itempage.dart';
import 'package:coffee/pages/mappage.dart';
import 'package:coffee/pages/profilepage.dart';
import 'package:coffee/screens/login_screen.dart';
import 'package:coffee/screens/register_screen.dart';
import 'package:coffee/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        // "/": (context) => WelcomeScreen(),
        "/": (context) => Homepage(),
        "login_screen": (context) => loginScreen(),
        "register_screen": (context) => RegScreen(),
        //   "homepage": (context) => Homepage(),
        "cartPage": (context) => cartPage(),
        "itemPage": (context) => itemPage(),
        "profilepage": (context) => Profilepage(),
        // "welcome_screen": (context) => WelcomeScreen(),
      },
    );
  }
}
