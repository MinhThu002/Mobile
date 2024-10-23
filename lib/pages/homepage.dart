import 'package:coffee/widgets/coffeeshop_widget.dart';
import 'package:coffee/widgets/homeappbar.dart';
import 'package:coffee/widgets/item_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Homeappbar(),
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
            child: Column(
              children: [
                //search widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                //coffeeshop
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Store",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ),

                //CoffeeShopwidget
                CoffeeshopWidget(),

                //item
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Booking Of Month",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
                //item widget
                item_widget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (Index) {},
        height: 70,
        color: Colors.blue,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
