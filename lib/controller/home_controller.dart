import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_demos/main.dart';
import 'package:my_flutter_demos/widgets/entry_card.dart';

// 2. 创建控制器
class HomeController extends GetxController {
  final List<DemoEntry> demoEntries = [
    DemoEntry(title: '基础Widget', routeName: AppRountes.basicWidgets),
    DemoEntry(title: '周练习Demo',routeName: AppRountes.weekDemos),
    DemoEntry(title: '网络请求', routeName: AppRountes.network),
    DemoEntry(title: '状态管理', routeName: AppRountes.statesManagement),
    DemoEntry(title: '资源管理', routeName: ''),
    DemoEntry(title: '本地存储', routeName: ''),
  ];



  /// 导航逻辑
  void navigateToDemo(DemoEntry entry) {
    if (AppRountes.pages.any((getPage) => getPage.name == entry.routeName)) {
      Get.toNamed(entry.routeName);
    } else {
      Get.snackbar(
        'Error',
        ' "${entry.routeName}" 还在开发中',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
