

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';


class DemoEntry {
  final String title;
  final String routeName;
  DemoEntry({required this.title, required this.routeName});
}


class EntryCard extends StatelessWidget {
  // 1. 定义这个 Widget 需要的参数
  final DemoEntry entry;
  final Color backgroundColor;
  final VoidCallback onTap; // 使用 VoidCallback，实现“低耦合”

  // 2. 创建构造函数
  const EntryCard({
    Key? key,
    required this.entry,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // 4. 根据传入的 backgroundColor 自动计算对比色
    final Color contrastColor = AppColors.getContrastColor(backgroundColor);

    // 5. 这里是 _buildGridItem 的完整 UI 逻辑
    return Card(
      color: backgroundColor,
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        splashColor: contrastColor.withOpacity(0.2),
        // 6. 使用传入的 onTap 回调
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                entry.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: contrastColor,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}