import 'package:flutter/material.dart';
import 'package:my_flutter_demos/gen/assets.gen.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> myItems = [
      _getText(Icons.call, "CALL"),
      _getText(Icons.near_me, "ROUTE"),
      _getText(Icons.share, "SHARE"),
    ];

    //实现标题栏
    final Widget titleWidget = Container(
      //内边距
      padding: const EdgeInsets.all(30.0),
      //整体是一个水平的布局
      child: Row(
        //只有一个孩子
        children: <Widget>[
          //用Expanded 会占用icon之外剩余空间
          Expanded(
            //垂直布局 放置两个文本
            child: Column(
              //设置文本一起始端对齐
              crossAxisAlignment: CrossAxisAlignment.start,
              //有两个孩子
              children: <Widget>[
                Container(
                  //底部内边距
                  padding: const EdgeInsets.only(bottom: 10.0), // [优化] 添加 const
                  //孩子 设置字体样式
                  child: const Text(
                    // [优化] 添加 const
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[450], //设置颜色透明度
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[400]),
          const Text('1026'), // [优化] 添加 const
        ],
      ),
    );

    /// 按钮实现
    final Widget buttonWidget = Row(
      //用MainAxisAlignment.spaceEvenly平均分配子空间
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //孩子们 (myItems 在这里被安全使用)
      children: myItems,
    );

    Widget textWidget = Container(
      alignment: Alignment.center,
      //设置内边距
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, '
        'it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, '
        'followed by a half-hour walk through pastures and pine forest, '
        'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
        'Activities enjoyed here include rowing, and riding the summer toboggan run.',
        // softWrap: true,//属性表示文本是否应在软换行符（例如句点或逗号）之间断开。
        // textAlign: TextAlign.center,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Practice1Page')), // [优化] 添加 const
      body: ListView(
        children: [
          // 1. 你的图片
          Assets.images.lake.image(width: 600, height: 300, fit: BoxFit.cover),

          titleWidget,

          buttonWidget,
          textWidget,
        ],
      ),
    );
  }

  Column _getText(IconData icon, String text) {
    return Column(
      //聚集widgets
      mainAxisSize: MainAxisSize.min,
      //child居中
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.blue[500]),
        Container(
          //上部外边距
          margin: const EdgeInsets.only(top: 8.0),
          //Text内容样式设定
          child: Text(text, style: TextStyle(color: Colors.blue[500])),
        ),
      ],
    );
  }
}
