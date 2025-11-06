import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RowPage')),
      body: Row(
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
