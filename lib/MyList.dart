import 'package:flutter/material.dart';
import 'AlibabaIcon.dart';

//列表组件
class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        children: <Widget>[
          const ListTile(
              leading: Icon(AlibabaIcon.wechat), title: Text('My List')),
          const Divider(),
          Container(
              padding: const EdgeInsets.fromLTRB(0.10, 0, 0, 0),
              height: 60,
              child: const Text('知者乐水，仁者乐山，知者动，仁者静，知者乐，仁者寿。',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22))),
          const ListTile(
            leading: Icon(Icons.local_car_wash, color: Colors.orange),
            title: Text("待收货"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.favorite, color: Colors.lightGreen),
            title: Text("我的收藏"),
          ),
          const Divider(),
          ListTile(
              leading: Image.network(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwenwen.soso.com%2Fp%2F20091107%2F20091107212753-1373639635.jpg&refer=http%3A%2F%2Fwenwen.soso.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1666106232&t=abfa90d78a4221f9cb357ff43597c74e'),
              title: const Text("在线客服"),
              subtitle: const Text('NASA 毅力号在火星上发现大量有机物，有助于探究火星是否存在生命'),
              trailing: const Icon(Icons.chevron_right_sharp)),
          const Divider(),
        ]);
  }
}
