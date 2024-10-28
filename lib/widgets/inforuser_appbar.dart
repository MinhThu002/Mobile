import 'package:flutter/material.dart';

class InforuserAppbar extends StatefulWidget {
  const InforuserAppbar({super.key});

  @override
  State<InforuserAppbar> createState() => _InforuserAppbarState();
}

class _InforuserAppbarState extends State<InforuserAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // body: ListView(
      //   children: [
      //     cartappbar_widget(),
      //   ],
      // ),
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () {
            //go back to trang truoc
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "User",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_vert,
          size: 30,
          color: Colors.blue,
        ),
      ]),
    );
  }
}
