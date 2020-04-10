import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView_Demo extends StatelessWidget {
  final List<String> contents = <String>['100', '200', '300', '400'];
  final List<int> colors = <int>[100, 200, 300, 400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: createListViewByListTitle(contents, colors));
  }
}

/**
 * 基于ListTitle创建ListView
 */
Widget createListViewByListTitle(List<String> content, List<int> colors) {
  return ListView(
    children: createListTitle(4, content, colors),
  );
}

/**
 * 使用ListTitle创建一个widget集合,带有下划线
 */
List<Widget> createListTitle(
    int length, List<String> content, List<int> colors) {
  return List.generate(
      length,
      (index) {
       return Column(
         children: <Widget>[
           ListTile(
             title: Text(content[index]),
             subtitle: Text(content[index]),
             leading: Icon(Icons.accessibility),
           ),
           Divider()
         ],
       );
      }
  );
}

/**
 * 创建返回一个最基本的listview
 */
Widget createBasicListViewDemo() {
  return ListView(children: createContainerList(100));
}

/**
 * 创建返回一个最基本listview使用List.Builder构造器
 */
Widget createBasicListViewByBuilder(
    List<String> contentList, List<int> colorList) {
  return ListView.builder(
    itemCount: colorList.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        alignment: Alignment.center,
        color: Colors.blue[index * 100],
        child: createBasicText(contentList[index]),
      );
    },
  );
}

/**
 * 创建返回一个最基本listview使用List.Separated构造器
 * 带有下划线
 */
Widget createBasicListViewBySeparated(
    List<String> contentList, List<int> colorList) {
  return ListView.separated(
    itemCount: colorList.length,
    separatorBuilder: (BuildContext context, int index) => Divider(), //指定下划线
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        alignment: Alignment.center,
        color: Colors.blue[colorList[index]],
        child: createBasicText(contentList[index]),
      );
    },
  );
}

/**
 * 创建一个基本的widget组件集合
 */
List<Widget> createContainerList(length) {
  return List.generate(
      length,
      (index) => Container(
            height: 50,
            alignment: Alignment.center,
            color: Colors.blue[index + 1 * 100],
            child: createBasicText(index.toString()),
          ));
}

/**
 * 根据内容，创建基本的text
 */
Widget createBasicText(content) {
  return Text(content,
      style: TextStyle(
          fontSize: 25, color: Colors.black, decoration: TextDecoration.none));
}
