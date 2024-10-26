import 'package:coffee/pages/inforuser.dart';
import 'package:coffee/pages/mappage.dart';
import 'package:coffee/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.centerLeft, // Căn trái
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Căn lên trên
          crossAxisAlignment: CrossAxisAlignment.start, // Căn bên trái
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Inforuser()), // Chuyển đến InfoUser
                );
              },
              child: Row(
                children: [
                  Icon(Icons.person, size: 40), // Icon profile
                  const SizedBox(width: 10), // Khoảng cách giữa icon và text
                  Text("Profile"), // Thêm nhãn cho icon
                ],
              ),
            ),
            const SizedBox(height: 20), // Khoảng cách giữa các icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Mappage()), // Chuyển đến MapPage
                );
              },
              child: Row(
                children: [
                  Icon(Icons.map_outlined,
                      size: 40, color: Colors.black), // Icon Google Maps
                  const SizedBox(width: 10), // Khoảng cách giữa icon và text
                  Text("Map"), // Thêm nhãn cho icon
                ],
              ),
            ),
            const SizedBox(height: 20), // Khoảng cách giữa các icon
            GestureDetector(
              onTap: () async {
                await _auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WelcomeScreen()), // Chuyển đến WelcomeScreen khi đăng xuất
                );
              },
              child: Row(
                children: [
                  Icon(Icons.exit_to_app_rounded, size: 40), // Icon đăng xuất
                  const SizedBox(width: 10), // Khoảng cách giữa icon và text
                  Text("Logout"), // Thêm nhãn cho icon
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
