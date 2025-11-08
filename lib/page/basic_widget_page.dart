import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_demos/widgets/entry_card.dart';

import '../app_colors.dart';
import '../controller/basic_widget_controller.dart';

class BasicWidgetPage extends GetView<BasicWidgetController> {

  const BasicWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('基础Widget')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.8,
          ),

          // 2. 所有数据都来自 'controller' (这部分之前是对的)
          itemCount: controller.entryList.length,
          itemBuilder: (context, index) {
            final entry = controller.entryList[index];
            final color = AppColors.cardColorPalette[index % AppColors.cardColorPalette.length];
            return EntryCard(
              entry: entry,
              backgroundColor: color,
              onTap: () => controller.navigateToDemo(entry),
            );
          },
        ),
      ),
    );
  }
}
