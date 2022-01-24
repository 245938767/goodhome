import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../application.dart';

class LoginController extends GetxController {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //是不显示密码
  late bool _passwordShow = true;
  //密码显示按钮
  late IconData _passwordIcon = Icons.visibility;
  //是否同意协议
  late bool _isAcceptSelected = false;
  //未同意协议显示字段
  late double _showDelog = 0;
  //显示的加载
  late bool _lodingShow = false;
  get isAcceptSelected => _isAcceptSelected;
  get lodingShow => _lodingShow;
  get showDelog => _showDelog;
  get passwordShow => _passwordShow;
  get passwordIcon => _passwordIcon;
  get passwordController => _passwordController;
  get unameController => _unameController;

  void passWordShowBar() {
    _passwordShow = !_passwordShow;
    if (_passwordShow) {
      _passwordIcon = Icons.visibility;
    } else {
      _passwordIcon = Icons.visibility_off;
    }
    update();
  }

  void checkAcceptShow(var value) {
    _isAcceptSelected = value;
    if (_isAcceptSelected == true) {
      _showDelog = 0;
    }
    update();
  }

  void checkLoginShow() {
    if (_isAcceptSelected == true) {
      login();
    } else {
      _showDelog = 1.0;
    }
    update();
  }

  login() {
    String username = _unameController.value.text;
    String password = _passwordController.value.text;
    if (username == "admin" && password == "admin") {
      _lodingShow = true;
    } else {
      _lodingShow = false;
    }
  }

  registerUser() {
    Get.toNamed(RouteConfig.register);
  }

  returnPassword() {
    Get.toNamed(RouteConfig.main);
  }

  phoneLogin() {
    Get.toNamed(RouteConfig.phoneLogin);
  }
}
