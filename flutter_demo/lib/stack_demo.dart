import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return displayBaseStack();
  }
}

Widget displayBaseStack() {
  return Stack(
    alignment: Alignment(0.6, 0.6),
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('image/kobe.png'),
        radius: 100,
        
      ),
      Container(
        decoration: BoxDecoration(color: Colors.black45),
        child: Text(
          'Kobe Bryant',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,decoration: TextDecoration.none),
        ),
      )
    ],
  );
}
