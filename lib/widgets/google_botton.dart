import 'package:coffee/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  // Phương thức để xử lý đăng nhập với Google
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      if (googleAuth != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Đăng nhập vào Firebase
        await FirebaseAuth.instance.signInWithCredential(credential);

        // Điều hướng đến màn hình tiếp theo sau khi đăng nhập thành công
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Homepage()));
      }
    } catch (error) {
      print("Error signing in with Google: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => signInWithGoogle(context), // Gọi hàm đăng nhập khi nhấn vào
      child: const Image(
        image: AssetImage('images/logo_gg.png'),
        width: 40, // Kích thước logo Google
        height: 40,
      ),
    );
  }
}
