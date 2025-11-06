import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListViewPage')),

      body: ListViewWidget(List.generate(1000, (index) => 'Item $index')),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  final List<String> items;

  const ListViewWidget(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemExtent: 210,
      itemBuilder: (context, index) {
        return ListTile(title: Text('This is item $index'));
      },
    );
  }
}
