import 'package:coffee/screens/register_screen.dart';
import 'package:coffee/widgets/google_botton.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 184, 96, 23),
          Color(0xff281537),
        ])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 100, // Adjust the width
                height: 100, // Adjust the height
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginScreen()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegScreen()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Login with Google',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ), //
            const SizedBox(
              height: 12,
            ),
            const SizedBox(height: 12),
            // GestureDetector(
            //   onTap: () {
            //     // Gọi hàm đăng nhập Google
            //     GoogleSignInButton(); // Gọi hàm đăng nhập khi nhấn vào logo
            //   },
            //   child: const Image(
            //     image: AssetImage('images/logo_gg.png'),
            //     width: 40, // Điều chỉnh kích thước logo Google
            //     height: 40,
            //   ),
            // ),
            const SizedBox(height: 12),
            GoogleSignInButton(), // Thay thế bằng widget GoogleSignInButton
          ],
        ),
      ),
    );
  }
}
