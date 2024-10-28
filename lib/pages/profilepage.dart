import 'package:coffee/widgets/profile_page_app_bar.dart';
import 'package:coffee/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      ProfilePageAppBar(),
      Container(
        //temporary height
        // height: 500,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color(0xffedecf2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 15),
        child: ProfileWidget(),
      ),
    ]));
  }
}
