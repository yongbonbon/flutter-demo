import 'package:flutter/material.dart';

//水平列表
class Horzvail extends StatelessWidget {
  const Horzvail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                const Text('我是一个文本')
              ],
            ),
          ),
          Container(
            width: 180.0,
            color: Colors.blue,
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
