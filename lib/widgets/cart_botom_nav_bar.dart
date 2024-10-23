import 'package:flutter/material.dart';

class cart_botom_nav_bar extends StatelessWidget {
  const cart_botom_nav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao của màn hình thiết bị
    // final screenHeight = MediaQuery.of(context).size.height;
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
        height: 100,

        // Chiếm khoảng 15% chiều cao của màn hình
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'total: ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "300 000 VND",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            //SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 20,
              //width: double.infinity,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
