
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:my_flutter_demos/widgets/entry_card.dart';

import '../main.dart';


class WeekDemoController extends GetxController {
  final List<DemoEntry> entryList = [
    DemoEntry(title: 'SafeArea', routeName: AppRountes.weekDemo1),
    DemoEntry(title: 'Expanded', routeName: AppRountes.weekDemo2),
    DemoEntry(title: 'Wrap', routeName: AppRountes.weekDemo3),
    DemoEntry(title: 'AnimatedContainer', routeName: AppRountes.weekDemo4),
    DemoEntry(title: 'Opacity', routeName: AppRountes.weekDemo5),
    DemoEntry(title: 'FutureBuilder', routeName: AppRountes.weekDemo6),
    DemoEntry(title: 'FadeTransition', routeName: AppRountes.weekDemo7),
    DemoEntry(title: 'FloatingActionButton', routeName: AppRountes.weekDemo8),
    DemoEntry(title: 'PageView', routeName: AppRountes.weekDemo9),
    DemoEntry(title: 'Table', routeName: AppRountes.weekDemo10),
    DemoEntry(title: 'SliverAppBar', routeName: AppRountes.weekDemo11),
    DemoEntry(title: 'SliverListGrid', routeName: AppRountes.weekDemo12),
    DemoEntry(title: 'FadeInImage', routeName: AppRountes.weekDemo13),
    DemoEntry(title: 'StreamBuilder', routeName: AppRountes.weekDemo14),
    DemoEntry(title: 'InheritedModel', routeName: AppRountes.weekDemo15),
    DemoEntry(title: 'ClipRRect', routeName: AppRountes.weekDemo16),
    DemoEntry(title: 'Hero', routeName: AppRountes.weekDemo17),
    DemoEntry(title: 'CustomPaint', routeName: AppRountes.weekDemo18),
    DemoEntry(title: 'ToolTip', routeName: AppRountes.weekDemo19),
    DemoEntry(title: 'FittedBox', routeName: AppRountes.weekDemo20),
    DemoEntry(title: 'LayoutBuilder', routeName: AppRountes.weekDemo21),
    DemoEntry(title: 'AbsorbPointer', routeName: AppRountes.weekDemo22),
    DemoEntry(title: 'Transform', routeName: AppRountes.weekDemo23),
    DemoEntry(title: 'BackDropFilter', routeName: AppRountes.weekDemo24),
    DemoEntry(title: 'Align', routeName: AppRountes.weekDemo25),
    DemoEntry(title: 'Position', routeName: AppRountes.weekDemo26),
    DemoEntry(title: 'AnimatedBuilder', routeName: AppRountes.weekDemo27),
    DemoEntry(title: 'Dismissible', routeName: AppRountes.weekDemo28),
    DemoEntry(title: 'SizedBox', routeName: AppRountes.weekDemo29),
    DemoEntry(title: 'ValueListenableBuilder', routeName: AppRountes.weekDemo30),
    DemoEntry(title: 'week demo 31', routeName: AppRountes.weekDemo31),
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