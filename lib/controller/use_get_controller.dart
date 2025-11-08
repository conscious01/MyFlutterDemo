import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:my_flutter_demos/models/login_result.dart';

class UseGetController extends GetxController {
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  var loggedUserNameEmail = ''.obs;
  var isLoggedIn = false.obs;

  var isLoading = false.obs;
  var loginResult = <LoginResult>[].obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;




  int _x = 0;
  int get x => _x;
  void increment() {
    _x++;
    print("x的值为$_x");
    update();
  }

  @override
  void onInit() {
    super.onInit();
    userNameController = TextEditingController();
    passwordController = TextEditingController(); // <--- 我的TYPO
    userNameController.text = "testuser";
  }

  final String postApiUrl = "http://192.168.1.43:3001/login";


  Future<void> login() async {
    isLoading(true);
    errorMessage('');
    var bodyData = jsonEncode({
      'username': userNameController.text,
      'password': passwordController.text,
    });

    try {
      // (执行) 发送真正的 POST 请求
      final response = await Dio().post(postApiUrl, data: bodyData);

      LoginResult loginResponse = LoginResult.fromJson(response.data);

      if (loginResponse.code == 200) {
        loggedUserNameEmail(userNameController.text);
        isLoggedIn(true);
      } else {
        errorMessage(loginResponse.msg);
      }
    } on DioException catch (e) {
      // --- 登录失败 ---
      // 4. (核心) 错误处理也交由 _handleDioError
      errorMessage(_handleDioError(e));
    } catch (e) {
      errorMessage("发生未知错误: ${e.toString()}");
    } finally {
      isLoading(false);
    }
  }

  // 5. (核心) 重构 _handleDioError 辅助方法
  String _handleDioError(DioException e) {
    // 检查 Dio 是否收到了一个响应 (4xx, 5xx)
    if (e.response != null && e.response?.data != null) {
      try {
        // 6. (核心) 尝试使用“错误”实体类来解析
        //    e.response!.data 就是那个 {'error': '...'} 的 Map
        LoginResult errorResponse = LoginResult.fromJson(e.response!.data);

        // 7. 类型安全地返回错误信息
        return errorResponse.msg;
      } catch (parseError) {
        // 如果 API 返回的错误信息不符合 LoginError 的格式
        return "解析错误响应失败 (代码: ${e.response?.statusCode})";
      }
    } else {
      // API 没有响应 (网络错误, DNS, 超时)
      return "网络连接错误: ${e.message}";
    }
  }
}
