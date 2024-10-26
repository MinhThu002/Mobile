import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  // const ProfileWidget({super.key});
  final ScrollController _controller = ScrollController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  ProfileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () async {
            _auth.signOut();
            Navigator.pop(context);
          },
          title: Text("logout"),
          leading: Icon(Icons.exit_to_app_rounded),
        ),
      ),
    );
  }
}
