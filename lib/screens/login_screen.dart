import 'package:coffee/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // // Hàm đăng nhập bằng email và mật khẩu
  // Future<void> signInWithEmailAndPassword(BuildContext context) async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //             email: emailController.text.trim(),
  //             password: passwordController.text.trim());

  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => Homepage()));

  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text(
  //       "Đăng nhập thành công!",
  //       style: TextStyle(fontSize: 18.0, color: Colors.white),
  //     )));
  //   } on FirebaseAuthException catch (e) {
  //     String message = "";
  //     if (e.code == 'user-not-found') {
  //       message = "Tài khoản không tồn tại.";
  //     } else if (e.code == 'wrong-password') {
  //       message = "Mật khẩu không chính xác.";
  //     } else {
  //       message = "Đã xảy ra lỗi: ${e.message}";
  //     }
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(
  //         message,
  //         style: TextStyle(fontSize: 18.0, color: Colors.redAccent),
  //       ),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Đảm bảo chiều cao đầy đủ
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(217, 0, 123, 255),
                  Color(0xff281537),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height *
                    0.75, // Giới hạn chiều cao của container
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Gmail',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(217, 0, 123, 255),
                              ),
                            )),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(217, 0, 123, 255),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff281537),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(217, 0, 123, 255),
                            Color(0xff281537),
                          ]),
                        ),
                        child: const Center(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        child: SignInButton(
                          Buttons.google,
                          onPressed: () {
                            signInWithGoogle(context);
                          },
                        ),
                      ),
                      // const Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     crossAxisAlignment: CrossAxisAlignment.end,
                      //     children: [
                      //       Text(
                      //         "Don't have account?",
                      //         style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.grey),
                      //       ),
                      //       Text(
                      //         "Sign up",
                      //         style: TextStyle(

                      //             ///done login page
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 17,
                      //             color: Colors.black),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

signInWithGoogle(BuildContext context) async {
  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user?.displayName);
  print(userCredential.user?.email);
  print(userCredential.user?.phoneNumber);

  if (userCredential.user != null) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      "Sign in as ${userCredential.user!.displayName!}",
      style: TextStyle(fontSize: 18.0, color: Colors.white),
    )));
  }
}
// // Hàm đăng nhập bằng Google
// Future<void> signInWithGoogle(BuildContext context) async {
//   try {
//     GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//     GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
//     AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );
//     UserCredential userCredential =
//         await FirebaseAuth.instance.signInWithCredential(credential);

//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => const Homepage()));

//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(
//         "Sign in as ${userCredential.user!.displayName!}",
//         style: TextStyle(fontSize: 18.0, color: Colors.white),
//       ),
//     ));
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(
//         "Đăng nhập bằng Google thất bại: $e",
//         style: const TextStyle(fontSize: 18.0, color: Colors.redAccent),
//       ),
//     ));
//   }
// }
