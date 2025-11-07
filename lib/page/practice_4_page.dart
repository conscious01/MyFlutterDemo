import 'package:flutter/material.dart';

class Practice4Page extends StatelessWidget {
  Practice4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice 4')),
      body: Container(
        color: Colors.indigo.shade300,
        padding: EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "作者:",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "HuYonger",
                  style: TextStyle(color: Colors.red.shade900, fontSize: 16),
                ),
                Expanded(child: Container()),
                Icon(Icons.favorite_border, color: Colors.black),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(Icons.share, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Android Monitor使用介绍",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "分类:",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  "开发环境/Android:",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      "发布时间2018-12-13",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
