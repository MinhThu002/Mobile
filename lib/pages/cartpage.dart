import 'package:coffee/widgets/cart_botom_nav_bar.dart';
import 'package:coffee/widgets/cart_item_samples.dart';
import 'package:coffee/widgets/cartappbar_widget.dart';
import 'package:flutter/material.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cartappbar_widget(),
          Container(
            //temorary height
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                cart_item_samples(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "add coupon code",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: cart_botom_nav_bar(),
    );
  }
}
