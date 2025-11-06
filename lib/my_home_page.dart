import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:my_flutter_demos/app_colors.dart';

import 'controller/home_controller.dart';
import 'widgets/entry_card.dart';
import 'app_colors.dart';


class MyHomePage extends GetView<HomeController> {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Hub (GetX)'),
      ),
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
          itemCount: controller.demoEntries.length,
          itemBuilder: (context, index) {
            final entry = controller.demoEntries[index];
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