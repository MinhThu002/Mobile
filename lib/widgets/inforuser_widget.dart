import 'package:flutter/material.dart';

class InforuserWidget extends StatefulWidget {
  const InforuserWidget({super.key});

  @override
  State<InforuserWidget> createState() => _InforuserWidgetState();
}

class _InforuserWidgetState extends State<InforuserWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.centerLeft, // Căn trái
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Căn lên trên
            crossAxisAlignment: CrossAxisAlignment.center, // Căn bên trái
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Text(
                  "T",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildInfoCard("Name: Minh Thư"),
              _buildInfoCard("Phone Number: 09123456"),
              _buildInfoCard("Address: Thủ Đức"),
            ],
          ),
        ),
      ),
    );
  }

// Hàm xây dựng card cho thông tin
  Widget _buildInfoCard(String text) {
    return Container(
      width: double.infinity, //full chiều rộng
      margin: EdgeInsets.symmetric(vertical: 10), // Khoảng cách dọc
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(1.0), // Màu nền mờ
        borderRadius: BorderRadius.circular(20), // Bo góc
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Đổ bóng nhẹ
            blurRadius: 5,
            offset: Offset(0, 2), // Đổ bóng xuống dưới
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
