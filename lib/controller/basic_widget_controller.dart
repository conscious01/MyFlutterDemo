
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:my_flutter_demos/widgets/entry_card.dart';

import '../main.dart';


class BasicWidgetController extends GetxController {
  final List<DemoEntry> entryList = [
    DemoEntry(title: 'Scaffold-AppBar', routeName: AppRountes.scaffoldAppBar),
    DemoEntry(title: 'Text/RichText', routeName: AppRountes.text),
    DemoEntry(title: 'TextField', routeName: AppRountes.textField),
    DemoEntry(title: 'Buttons', routeName: AppRountes.buttons),
    DemoEntry(title: 'Image', routeName: AppRountes.image),
    DemoEntry(title: 'Container', routeName: AppRountes.container),
    DemoEntry(title: 'Padding', routeName: AppRountes.padding),
    DemoEntry(title: 'Center', routeName: AppRountes.center),
    DemoEntry(title: 'Stack', routeName: AppRountes.stack),
    DemoEntry(title: 'Colum', routeName: AppRountes.colum),
    DemoEntry(title: 'Row', routeName: AppRountes.row),
    DemoEntry(title: 'Expanded', routeName: AppRountes.expanded),
    DemoEntry(title: 'ListView', routeName: AppRountes.listView),
    DemoEntry(title: 'GridView', routeName: AppRountes.gridView),
    DemoEntry(title: 'TabBar', routeName: AppRountes.tabBar),
    DemoEntry(title: 'BottomNavigationBar', routeName: AppRountes.bottomNavigationBar),
    DemoEntry(title: '练习布局1', routeName: AppRountes.practice_1),
    DemoEntry(title: '练习布局2', routeName: AppRountes.practice_2),
    DemoEntry(title: '练习布局3', routeName: AppRountes.practice_3),
    DemoEntry(title: '练习布局4', routeName: AppRountes.practice_4),
    DemoEntry(title: '练习布局5', routeName: AppRountes.practice_5),

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