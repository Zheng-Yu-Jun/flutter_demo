import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ContainerDemo.dart';
import 'gridview_demo.dart';


/***
 * 程序主入口
 */
void main() => runApp(MainActiivty());

/**程序主界面，用于显示各个小部件入口按钮的界面**/
class MainActiivty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/container": (context) => ContainerDemo(),
        "/gridview": (context) => Gridview_Demo(),
      },
      home: ContentOfMainActivity(),
    );
  }
}

/**
 * 主界面内容体小部件
 */
class ContentOfMainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //这里已经使用到了container去给背景上一个色
      color: Colors.white,
      child: Column(
        children: <Widget>[
          RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/container");
              },
              child: Text('Container', style: TextStyle(fontSize: 25))),
          RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/gridview");
              },
              child: Text('GridView', style: TextStyle(fontSize: 25)))
        ],

      ),
    );
  }
}
