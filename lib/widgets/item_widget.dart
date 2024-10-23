import 'package:flutter/material.dart';

class item_widget extends StatelessWidget {
  const item_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      //tat tinh nang scroll
      // => scroll list view o homepage
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                        //18
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(
                        Icons.home, // Icon hình ngôi nhà
                        size: 15, // Kích thước icon bằng với kích thước chữ
                        color: Colors.black,
                      ),
                      SizedBox(width: 5), // Khoảng cách giữa icon và chữ
                      Text(
                        "Nhà văn Hóa Sinh Viên",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "100.000 VND",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
