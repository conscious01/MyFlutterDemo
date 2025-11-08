import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as my_http;
import 'package:my_flutter_demos/models/login_result.dart';

class NetworkPage extends StatelessWidget {
  NetworkPage({super.key});

  final String getApiUrl = "http://192.168.1.43:3001/getList";
  final String postApiUrl = "http://192.168.1.43:3001/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NetworkPage')),
      body: Column(
        children: [
          SizedBox(height: 44),
          Text("Dart io发起的请求"),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    print("_DartIOGet");
                    _dartIOGet();
                  },
                  child: Text("Get"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _dartIOPost();
                  },
                  child: Text("Post"),
                ),
              ),
            ],
          ),

          SizedBox(height: 44),
          Text("Dio请求", style: TextStyle(color: Colors.red)),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _dioGet();
                  },
                  child: Text("Get"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _dioPost();
                  },
                  child: Text("Post"),
                ),
              ),
            ],
          ),

          SizedBox(height: 44),
          Text("Http库", style: TextStyle(color: Colors.blue)),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _httpGet();
                  },
                  child: Text("Get"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _httpPost();
                  },
                  child: Text("Post"),
                ),
              ),
            ],
          ),

          SizedBox(height: 22),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                decodeJson();
              },
              child: Text("内连序列化JSON"),
            ),
          ),
        ],
      ),
    );
  }

  decodeJson() {
    var data = '{"name": "Knight","email": "Knight@163.com"}';
    Map<String, dynamic> user = json.decode(data);
    //输出名字
    print("Hello,my name is ${user['name']}");
    //输出邮箱
    print("Hello,This is my email ${user['email']}");
  }

  _dartIOGet() async {
    var responseBody;
    //1.创建HttpClient
    var httpClient = new HttpClient();
    //2.构造Uri
    var requset = await httpClient.getUrl(Uri.parse(getApiUrl));
    //3.关闭请求，等待响应
    var response = await requset.close();
    //4.进行解码，获取数据
    if (response.statusCode == 200) {
      //拿到请求的数据
      responseBody = await response.transform(utf8.decoder).join();
      //先不解析打印数据
      print(responseBody);
    } else {
      print("error");
    }
  }

  _dartIOPost() async {
    var responseBody;
    //1.创建HttpClient
    var httpClient = new HttpClient();
    //2.构造Uri
    var requset = await httpClient.postUrl(Uri.parse(postApiUrl));
    //3.关闭请求，等待响应
    var response = await requset.close();
    //4.进行解码，获取数据
    if (response.statusCode == 200) {
      //拿到请求的数据
      responseBody = await response.transform(utf8.decoder).join();
      //先不解析打印数据
      print(responseBody);
    } else {
      print("error");
    }
  }

  _dioGet() async {
    try {
      Response response;
      //等待返回response
      response = await Dio().get(getApiUrl);
      if (response.statusCode == 200) {
        print(response);
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }

  _dioPost() async {
    try {
      Response response;
      response = await Dio().post(postApiUrl);
      if (response.statusCode == 200) {
        String result = response.data.toString();
        final loginResult = LoginResult.fromJson(jsonDecode(result));
        print('loginResult=>${loginResult.data.dataOperator.name}');

        // print(response);
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }

  _httpGet() async {
    try {
      //因为导入http 用了as xxx方式，所以对象请求都用xxx.get方式
      var response = await my_http.get(Uri.parse(getApiUrl));
      if (response.statusCode == 200) {
        //打印返回的数据
        print(response.body);
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }

  _httpPost() async {
    try {
      //因为导入http 用了as xxx方式，所以对象请求都用xxx.get方式
      var response = await my_http.post(Uri.parse(postApiUrl));
      if (response.statusCode == 200) {
        //打印返回的数据
        print(response.body);
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }
}
