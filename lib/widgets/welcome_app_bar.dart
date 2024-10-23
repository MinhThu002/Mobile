import 'package:flutter/material.dart';

class welcome_app_bar extends StatelessWidget {
  const welcome_app_bar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "images/bg1.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Text("WELCOME"),
          )
        ],
      ),
    );
  }
}
