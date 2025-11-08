import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ButtonsPage')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Text("我是ElevatedButton"),
            onPressed: () {
              // ...
            },
          ),
          TextButton(
            child: Text("我是TextButton"),
            onPressed: () {
              // ...
            },
          ),
          OutlinedButton(
            child: Text("我是OutlinedButton"),
            onPressed: () {
              // ...
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // ...
        },
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String image_url;

  ImageWidget(this.image_url, {super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image_url,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      height: 500,
      width: 350,
    );
  }
}
