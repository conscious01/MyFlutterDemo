import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TextFieldPage extends StatelessWidget {
  TextFieldPage({super.key});

  final editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextFieldPage')),
      body: Center(child: TextFieldWidget(editController)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar(
          'Input is below',
          ' "${editController.text}"',
          backgroundColor: Colors.blue,
          colorText: Colors.white,
        );
      },tooltip: 'Read Input',),

    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final controller;

  const TextFieldWidget(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller);
  }
}
