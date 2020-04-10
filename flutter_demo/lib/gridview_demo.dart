import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return createBasicGridViewWithReverse();
  }
}

/***
 * 创建基本的gridview基于GridView.count
 * crossAxisCount 表明横轴的数量
 */
Widget createBasicGridViewByCount() {
  return GridView.count(
    crossAxisCount: 3,
    children: createAListByAmount(10),
  );
}

/***
 * 创建基本的gridview基于GridView.extent
 * maxCrossAxisExtent 表示创建一个最大宽度为x的网格
 */
Widget createBasicGridViewByExtent() {
  return GridView.extent(
      maxCrossAxisExtent: 300, children: createAListByAmount(20));
}

/***
 * 创建基本的gridview基于GridView.count
 * mainAxisSpacing 设置主轴方向上的间隔
 */
Widget createBasicGridViewByCountWithMainAxisSpacing() {
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 8,
    children: createAListByAmount(10),
  );
}

/***
 * 创建基本的gridview基于GridView.count
 * mainAxisSpacing 设置另外一个轴方向上的间隔
 */
Widget createBasicGridViewByCountWithCrossAxisSpacing() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    children: createAListByAmount(10),
  );
}

/**
 * 创建gridview，并设置其滑动方向
 * Axis.vertical  垂直方向滑动
 * Axis.horizontal 水平方向滑动
 */
Widget createBasicGridViewSetTheScrollDirection() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    scrollDirection: Axis.vertical,
    children: createAListByAmount(10),
  );
}

/**
 * 创建gridview，并设置reverse属性，reverse代表是否调转列表的方向
 */
Widget createBasicGridViewWithReverse() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    scrollDirection: Axis.horizontal,
    reverse: true,
    //false
    children: createAListByAmount(10),
  );
}

/**
 * 创建gridview，并设置controller属性，设置初始偏移量
 * initialScrollOffset ： 初始偏移量
 */
Widget createBasicGridViewWithScrollController() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    scrollDirection: Axis.horizontal,
    controller:
        ScrollController(initialScrollOffset: 100, keepScrollOffset: false),
    children: createAListByAmount(10),
  );
}

/**
 * 创建gridview，设置primary
 * 警告：If the [primary] argument is true, the [controller] must be null.
 * question:primary是干啥用的？？？
 */
Widget createBaseGridviewWithPrimary() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    scrollDirection: Axis.horizontal,
    primary: false,
    children: createAListByAmount(10),
  );
}

/**
 * 创建一个gridview，跟着Padding
 */
Widget createBaseGridviewWithPadding() {
  return GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(20),
    children: createAListByAmount(10),
  );
}

Widget createBaseGridViewWithGridTitle() {
  return GridView.count(
    crossAxisCount: 2,
    children: <Widget>[],
  );
}

/**
 * 创建一定数量的widget，并返回一个集合
 */
List<Widget> createAListByAmount(amount) {
  return List.generate(
      amount,
      (index) => Container(
            color: Colors.blue[(index + 1) * 100],
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: createBaseText('The $index'),
          ));
}

/**
 * 创建一个gridview，带有gridtitle
 */
Widget createGridViewWithGridTitle() {
  return GridView.count(
      crossAxisCount: 2, children: createAListByAmountWithGridTitle(10));
}

/**
 * 创建一个gridview，带有gridtitle和GridTitleBar
 */
Widget createGridViewWithGridTitleAndGridTitleBar() {
  return GridView.count(
      crossAxisCount: 2, children: createAListByAmountWithGridTitleBar(10));
}

/**
 * 创建一定数量的widget，并返回一个集合,带有外层GridTitle
 * header和footer使用contaier去实现
 */
List<Widget> createAListByAmountWithGridTitle(amount) {
  return List.generate(
      amount,
      (index) => GridTile(
            child: Container(
              color: Colors.blue[(index + 1) * 100],
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: createBaseText('The $index'),
            ),
            header: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
            footer: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
          ));
}

/**
 * 创建一定数量的widget，并返回一个集合,带有外层GridTitle
 * 在gridtitle使用gridtitlebar去实现，这是一个快速的布局
 */
List<Widget> createAListByAmountWithGridTitleBar(amount) {
  return List.generate(
      amount,
      (index) => GridTile(
          child: Container(
            color: Colors.blue[(index + 1) * 100],
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: createBaseText('The $index'),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.amber,
            title: createBaseText("Jay Chou Show 2020"),
            subtitle: createBaseText("Jay Chou Show 2020"),
            trailing: Icon(Icons.accessibility),
          )));
}

/**
 * 创建最基本的text
 */
Widget createBaseText(content) {
  return Text(
    content,
    style: TextStyle(
        color: Colors.white, fontSize: 25, decoration: TextDecoration.none),
  );
}
