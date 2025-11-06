import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridViewPage')),

      body: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.horizontal,
        children: List.generate(66, (i) {
          return Card(child: Center(child: Text('This is $i')));
        }),
      ),
    );
  }
}
