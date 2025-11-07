import 'package:flutter/material.dart';

class Practice3Page extends StatelessWidget {
  Practice3Page({super.key});

  @override
  Widget build(BuildContext context) {
    CircleAvatar getCircleAvatar(String imageUrl) {
      //圆形头像
      return CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(imageUrl),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Practice 3')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSYtP1WxR6vg5rp4XpwEmHxIA-dwju1YOxfQ&s",
                      width: 100,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsetsGeometry.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "流浪地球",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "豆瓣评分: 7.9",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "类型:科幻、太空、灾难",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "导演:郭帆",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Row(
                              children: [
                                Text(
                                  "主演",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: getCircleAvatar(
                                    "https://images.emojiterra.com/google/noto-emoji/unicode-16.0/color/1024px/263a.png",
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: getCircleAvatar(
                                    "https://image.similarpng.com/file/similarpng/very-thumbnail/2020/06/Smiling-face-emoji-with-sunglasses-vector-PNG.png",
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: getCircleAvatar(
                                    "https://cdn.vectorstock.com/i/1000v/52/91/cute-funny-emoji-smile-face-set-collection-vector-40635291.jpg",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
