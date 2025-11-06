import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ContainerPage')),
      body: Container(
        width: 200, //宽
        height: 200,
        decoration: BoxDecoration(
          //设置边框
          //背景色
          color: Colors.redAccent,
          //圆角
          borderRadius: BorderRadius.circular(6),
        ), //高
        child: Center(
          child: Text("My name is Knight"),
        ),
      ),
    );
  }
}
