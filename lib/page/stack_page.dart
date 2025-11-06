import 'package:flutter/material.dart';

import 'image_page.dart';

class StackPage extends StatelessWidget {
  StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StackPage')),
      body: Center(
        child: Stack(
          children: [
            ImageWidget(
              'https://image.lexica.art/full_jpg/5eb077de-91b1-46fa-bdea-604fef88d52b',
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
            ),
            Opacity(
              opacity: 0.6,
              child:  Container(
                width: 200.0,
                height: 200.0,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
