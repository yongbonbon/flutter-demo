import 'package:flutter/material.dart';
import 'AlibabaIcon.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.home, size: 40, color: Colors.yellow),
        SizedBox(height: 20),
        Icon(AlibabaIcon.Italy, size: 40, color: Colors.green),
         SizedBox(height: 20),
        Icon(AlibabaIcon.wechat, size: 40, color: Colors.green),
         SizedBox(height: 20),
        Icon(AlibabaIcon.book, size: 40, color: Colors.orange),
      ]
    );
  }
}