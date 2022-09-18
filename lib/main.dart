import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Hello world')),
      body: Column(children: const [
        myApp(),
        myButton(),
        ImageComponent(),
        SizedBox(height: 20),
        // Circular(),
        // SizedBox(height: 20),
        ClipImage(),
        SizedBox(height: 20),
        LocalImage(),
      ]),
    ),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(Object context) {
    return Center(
        child: Container(
            alignment: Alignment.center, //配置Container容器内元素的方位
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.yellow, //背景颜色
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(10), //配置圆角
                boxShadow: const [
                  BoxShadow(color: Colors.blue, blurRadius: 20)
                ],
                //LinearGradient 背景线性渐变 RadialGradient径向渐变
                gradient:
                    const LinearGradient(colors: [Colors.red, Colors.yellow])),
            child: const Text('Hello world',
                style: TextStyle(
                  color: Colors.purple,
                ))));
  }
}

class myButton extends StatelessWidget {
  const myButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10), //四周margin
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),

      child: const Text('hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              // color: Colors.red,
              color: Color.fromRGBO(244, 244, 123, 1),
              fontSize: 40)),
    );
  }
}

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Image.network(
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.qcbifen.com%2Fuploads%2Fcontent%2F2021%2F06%2F60c5fba3459b1.jpg&refer=http%3A%2F%2Fwww.qcbifen.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1666092845&t=c4ab2ea50bc0936a064ae02c30fb2623',
          // scale: 2,r
          alignment: Alignment.centerRight,
          fit: BoxFit.fill,
        ));
  }
}

//圆形图片1
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(75),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F1541edbd4a745040bee2048003e1019ea0f180ee34637-46MzJC_fw658&refer=http%3A%2F%2Fhbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1666099550&t=8813393c3311733df308f7a39c625744'),
              fit: BoxFit.cover,
            )));
  }
}

//圆形图片2
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.qcbifen.com%2Fuploads%2Fcontent%2F2021%2F06%2F60c5fba3459b1.jpg&refer=http%3A%2F%2Fwww.qcbifen.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1666092845&t=c4ab2ea50bc0936a064ae02c30fb2623',
            fit: BoxFit.cover,
            width: 150,
            height: 150));
  }
}


//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
      child: Image.asset('images/a.jpg')
    );
  }
}