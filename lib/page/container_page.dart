import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_demos/gen/assets.gen.dart';

class ContainerPage extends StatelessWidget {
  ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ContainerPage')),
      body: Container(
        child: Text('My name is Knight'),
        width: 200,
        height: 200,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(6)
        ),
      )
    );
  }
}

