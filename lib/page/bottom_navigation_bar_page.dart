import 'package:flutter/material.dart';



class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}


class _BottomNavigationBarState extends State<BottomNavigationBarPage> {
  // 1. 你提供的 Map
  // (我们明确一下类型 Map<String, Icon>，这更有助于 Dart 分析)
  final Map<String, Icon> bottomMap = {
    "首页": Icon(Icons.home),
    "朋友圈": Icon(Icons.camera),
    "信息": Icon(Icons.message),
    "其他": Icon(Icons.devices_other),
  };

  // 2. 用于保存当前选中页面的索引
  int _currentIndex = 0;

  // 3. 一个列表，用于存放与底部导航栏对应的页面内容
  // 我们将在 initState 中根据 map 动态生成这个列表
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    // 根据 bottomMap 的 key (标题) 来动态创建页面
    _pages = bottomMap.keys.map((title) {
      // return 一个简单的 Center 控件，显示标题
      return Center(
        child: Text(
          '这是 "$title" 页面',
          style: TextStyle(fontSize: 24),
        ),
      );
    }).toList();
  }

  // 4. 点击底部 Tab 时调用的方法
  void _onTabTapped(int index) {
    // setState 会通知 Flutter 状态已改变，需要重新构建 Widget
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 动态获取当前页面的标题，用于 AppBar
    final String currentTitle = bottomMap.keys.toList()[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(currentTitle),
      ),
      // body 显示 _pages 列表中对应索引的页面
      body: _pages[_currentIndex],

      // 关键的底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 5. 核心：动态生成 BottomNavigationBarItem
        // 我们遍历 map，将每个 "键" (String) 和 "值" (Icon) 转换成一个 Item
        items: bottomMap.entries.map((entry) {
          return BottomNavigationBarItem(
            icon: entry.value, // Icon 来自 Map 的 value
            label: entry.key,    // 标签 来自 Map 的 key
          );
        }).toList(), // 转换成列表

        // 6. 核心：响应你的要求（选中变色）
        currentIndex: _currentIndex,       // 当前选中的索引
        onTap: _onTabTapped,               // 点击时的回调
        selectedItemColor: Colors.blue,    // 选中的颜色
        unselectedItemColor: Colors.grey,  // 未选中的颜色

        // （重要）当 Item 超过 3 个时，类型默认为 "shifting" (背景会变色)
        // 我们通常希望它是 "fixed" (背景色固定，只变图标和文字颜色)
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}