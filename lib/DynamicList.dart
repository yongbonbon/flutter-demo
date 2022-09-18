import 'package:flutter/material.dart';

//水平列表
class DynamicList extends StatelessWidget {
  List dynamicListItems = [];

  DynamicList({Key? key}) : super(key: key) {
    for (var i = 0; i < 10; i++) {
      dynamicListItems.add('我是一个列表---$i');
    }
  }

  List<Widget> _initListView() {
    List<Widget> list = [];
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(
          title: Text('如果你是对的，你没必要发脾气；如果你是错的，你没资格去发脾气。这才是真正的智慧。---${i + 1}')));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: dynamicListItems.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text("${dynamicListItems[index]}"));
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(children: _initListView());
  // }
}
