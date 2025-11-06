import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Page'),
        leading: Icon(Icons.home),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Add Photo',
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Menu 1'), value: 1),
                PopupMenuItem(child: Text('Menu 2'), value: 2),
                PopupMenuItem(child: Text('Menu 3'), value: 3),
                PopupMenuItem(child: Text('Menu 4'), value: 4),
                PopupMenuItem(child: Text('Menu 5'), value: 5),
              ];
            },
            onSelected: (value) {
              switch (value) {
                case 1:
                  break;
                case 2:
                  break;
                case 3:
                  break;
                case 4:
                  break;
                case 5:
                  break;
              }
            },
          ),
        ],
      ),
      body: Center(child: Text('This is a Center Widget')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('This is Item1'),
              leading: CircleAvatar(child: Icon(Icons.scanner)),
            ),
            ListTile(
              title: Text('This is Item2'),
              leading: CircleAvatar(child: Icon(Icons.list)),
            ),
            ListTile(
              title: Text('This is Item3'),
              leading: CircleAvatar(child: Icon(Icons.score)),
            ),
          ],
        ),
      ),
    );
  }
}
