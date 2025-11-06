import 'package:flutter/material.dart';

class ExpanedPage extends StatelessWidget {
  ExpanedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RowPage')),

      // body: Row(
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.green, // 设置背景颜色
      //         fixedSize: Size(110, 50),
      //       ),
      //       child: Text('绿色按钮1'),
      //     ),
      //     Expanded(
      //       child: ElevatedButton(
      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.yellow, // 设置背景颜色
      //         ),
      //         child: Text('黄色按钮2'),
      //       ),
      //     ),
      //     ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.red, // 设置背景颜色
      //         fixedSize: Size(110, 50),
      //       ),
      //       onPressed: () {},
      //       child: Text('红色按钮3'),
      //     ),
      //   ],
      // ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              height: 40.0,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(8),
              height: 40.0,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(8),
              height: 40.0,
            ),

          ),
        ],
      ),
    );
  }
}
