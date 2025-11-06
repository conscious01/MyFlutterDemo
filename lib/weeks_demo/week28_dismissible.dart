import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Week28 extends StatefulWidget {
  @override
  _Week28State createState() => _Week28State();
}

class _Week28State extends State<Week28> {
  List list = List.generate(20, (index) => 'This is No.$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            // 使用一个局部变量来获取 item，防止在 onDismissed 中索引越界
            final item = list[index];

            return Dismissible(
              background: Container(color: Colors.redAccent),
              secondaryBackground: Container(color: Colors.blue),

              // 1. (已删除) confirmDismiss: ...
              //    我们把它删掉了，因为我们在这里不进行二次确认。
              //    如果你需要二次确认，你应该在这里 return Future.value(true) 或 false。

              // 2. (已添加) onDismissed:
              //    这个回调会在卡片"完全滑出"屏幕后触发。
              //    这才是删除数据和更新UI的正确时机。
              onDismissed: (DismissDirection direction) {
                // 在这里执行删除操作
                setState(() {
                  list.removeAt(index);
                });

                // 你还可以在这里检查滑动方向
                if (direction == DismissDirection.endToStart) {
                  print('从右向左滑动 (endToStart)');
                } else {
                  print('从左向右滑动 (startToEnd)');
                }

                // (可选) 显示一个 SnackBar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$item 已删除')),
                );
              },

              dragStartBehavior: DragStartBehavior.start,
              // 确保 Key 是唯一的
              key: ValueKey(item),
              child: ListTile(
                title: Text('$item'),
              ),
            );
          }),
    );
  }
}
