import 'package:coffee/widgets/inforuser_appbar.dart';
import 'package:coffee/widgets/inforuser_widget.dart';
import 'package:flutter/material.dart';

class Inforuser extends StatefulWidget {
  const Inforuser({super.key});

  @override
  State<Inforuser> createState() => _InforuserState();
}

class _InforuserState extends State<Inforuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          InforuserAppbar(),
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
            child: InforuserWidget(),
          )
        ],
      ),
    );
  }
}
