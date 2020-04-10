import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        createBaseContainer(),
        createContainerWithPadding(),
        createContainerWithMargin(),
        createContainerWithDecoration(),
        createContainerWithAlignment(),
        createContainerWithMatrix4()
      ],
    );
  }
}

/**
 * 创建一个最基本的container实例
 */
Widget createBaseContainer() {
  return Container(
    color: Colors.blue,
    child: createBaseText("First"),
  );
}

/**
 * 创建一个基本的container实例，带有padding属性
 */
Widget createContainerWithPadding() {
  return Container(
    color: Colors.blue,
    child: createBaseText("Second"),
    padding: EdgeInsets.all(20),
  );
}

/**
 * 创建一个基本的container实例，带有margin属性
 */
Widget createContainerWithMargin() {
  return Container(
    color: Colors.blue,
    child: createBaseText("Three"),
    margin: EdgeInsets.all(20),
  );
}

/**
 *创建一个带有背景为圆圈装饰物decoration的container
 */
Widget createContainerWithDecoration() {
  return Container(
    child: createBaseText("Four"),
    decoration: BoxDecoration(
      shape: BoxShape.circle, //圆形
//      shape: BoxShape.rectangle,//或者矩形
      color: Colors.blue,
    ),
  );
}

/**
 * 创建一个带有对齐方式的container
 * 设置宽高，强行指定矩形的大小
 */
Widget createContainerWithAlignment(){
  return Container(
    color: Colors.blue,
    width: 300,
    height: 300,
    child: createBaseText("Five"),
    alignment: Alignment.topCenter,
  );
}

/**
 * 创建一个带有倾斜角度的container
 * 设置宽高，强行指定矩形的大小
 */
Widget createContainerWithMatrix4(){
  return Container(
    color: Colors.blue,
    width: 100,
    height: 100,
    child: createBaseText("Five"),
    alignment: Alignment.center,
    transform: Matrix4.rotationZ(0.4),
  );
}


/**
 * 创建一个基本的Text
 */
Widget createBaseText(name) {
  return Text(
    name,
    style: TextStyle(
        fontSize: 25, decoration: TextDecoration.none, color: Colors.white),
  );
}
