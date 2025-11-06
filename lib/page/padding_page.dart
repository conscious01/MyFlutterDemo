import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ContainerPage')),
      body: Container(
        width: 200, //宽
        height: 200, //高
        child: Padding(
          padding: EdgeInsets.fromLTRB(4, 10, 6, 8),
          child: Text("My name is Knight"),
        ),
        decoration: BoxDecoration(
          //设置边框
          //背景色
          color: Colors.redAccent,
          //圆角
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
