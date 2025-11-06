import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextPage')),
      body: Column(
        children: [
          CustomTextWidget('This is CustomTextStyle'),
          RichTextWidget(),
        ],
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final Paint pg = Paint();
  final String text;

  //构造函数 参数外部传进来
  CustomTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    //设置画笔颜色为黑色
    pg.color = Color(0xFF000000);
    return Text(
      text ?? "Hello",
      style: TextStyle(
        //颜色
        color: Colors.blue,
        //字体大小
        fontSize: 14,
        //字体加粗
        fontWeight: FontWeight.bold,
        //文本背景颜色
        background: pg,
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'This is RichText',
        style: TextStyle(inherit: true, fontSize: 16, color: Colors.black),
        children: [
          TextSpan(
            text: 'Android 艺术探索',
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: '第一行代码'),
          TextSpan(
            text: 'Android进阶之光',
            style: TextStyle(color: Colors.indigo, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
