import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_demos/gen/assets.gen.dart';

class ImagePage extends StatelessWidget {
  ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePage')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Assets.images.funWithLights.image()),
            Center(
              child: ImageWidget(
                'https://image.lexica.art/full_jpg/5eb077de-91b1-46fa-bdea-604fef88d52b',
              ),
            ),
          ],
        ),
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
