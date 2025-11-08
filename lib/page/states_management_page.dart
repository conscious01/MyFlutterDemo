import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_flutter_demos/main.dart';

class StatesManagementPage extends StatelessWidget {
  const StatesManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('StatesManagementPage')),
      body: Column(
        children: [
          SizedBox(height: 44),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRountes.useGet);
              },
              child: Text("使用Get"),
            ),
          ),
        ],
      ),);
  }
}
