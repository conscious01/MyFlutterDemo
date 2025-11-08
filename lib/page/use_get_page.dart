import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:my_flutter_demos/controller/use_get_controller.dart';

class UseGetPage extends GetView<UseGetController> {
  const UseGetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UseGetPage')),
      body: Center(
        // (核心) Obx 会监听 controller.isLoggedIn 的变化
        // 自动在 _buildLoginForm() 和 _buildSuccessUI() 之间切换
        child: Obx(() {
          if (controller.isLoggedIn.value) {
            return _buildSuccessUI();
          } else {
            return _buildLoginForm();
          }
        }),
      ),
    );
  }


  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 包裹内容
        children: [
          Text(
            "请输入测试密码 (123456)",
            style: TextStyle(color: Colors.grey.shade700),
          ),
          SizedBox(height: 10),
          TextField(
            controller: controller.userNameController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextField(
            controller: controller.passwordController,
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          SizedBox(height: 20),

          // (核心) 登录按钮和加载动画的切换
          Obx(() {
            if (controller.isLoading.value) {
              return CircularProgressIndicator();
            } else {
              return ElevatedButton(
                // 调用 Controller 的 login 方法
                onPressed: controller.login,
                child: Text("登 录"),
              );
            }
          }),

          SizedBox(height: 10),

          // (核心) 错误信息的显示
          Obx(() {
            if (controller.errorMessage.value.isNotEmpty) {
              return Text(
                controller.errorMessage.value,
                style: TextStyle(color: Colors.red, fontSize: 14),
                textAlign: TextAlign.center,
              );
            } else {
              return SizedBox.shrink(); // 没有错误时, 不占空间
            }
          }),
        ],
      ),
    );
  }



  Widget _buildSuccessUI() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 80),
          SizedBox(height: 20),
          Text(
            // (核心) Obx 会自动更新这里的用户名
            "欢迎回来, ${controller.loggedUserNameEmail.value}!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }

  _buildContainer(String textString) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 207, 219),
        borderRadius: BorderRadius.circular(10.0), // 圆角
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            offset: Offset(6.0, 2.0),
            blurRadius: 10.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
      // 盒子阴影
      alignment: Alignment.center,
      width: 100.0,
      height: 80.0,
      margin: EdgeInsets.all(10),
      child: Text(textString, style: const TextStyle(fontSize: 20)),
    );
  }
}
