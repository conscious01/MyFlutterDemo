import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  ColumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ColumPage')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(color: Colors.blue, width: 50, height: 50),
          Container(color: Colors.black, width: 50, height: 50),
          Container(color: Colors.green, width: 50, height: 50),
        ],
      ),
    );
  }
}
